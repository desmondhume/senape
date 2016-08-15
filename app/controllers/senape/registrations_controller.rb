module Senape
  class RegistrationsController < ApplicationController
    def create
      @user = resource_class.new(registration_params)

      if @user.save
        RegistrationsMailer.confirmation_instructions(@user.id).deliver_now
        render json: {
          token: ::JWT.encode(
            {
              user_id: @user.id,
              email: @user.email
            },
            ::Senape.jwt_secret,
            'HS256'
          )
        }
      else
        render json: {errors: @user.errors.full_messages}, status: 400
      end
    end

    private

    def registration_params
      params.require(resource_sym).permit(:email, :password)
    end
  end
end
