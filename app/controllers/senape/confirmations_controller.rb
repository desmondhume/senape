module Senape
  class ConfirmationsController < ApplicationController
    def create
      with_valid_token(params[:token]) do |payload|
        @user = resource_class.find(payload["#{resource_sym}_id"])
        if @user.confirmed?
          render json: {
            errors: "User already confirmed"
          }
        else
          @user.update(confirmed_at: Time.current)
          render json: @user
        end
      end
    end
  end
end