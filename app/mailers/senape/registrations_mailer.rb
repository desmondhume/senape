require 'jwt'
module Senape
  class RegistrationsMailer < ApplicationMailer
    include Helpers

    # default from: 'no-reply@tobepet.com' TODO
    default from: 'change-this@mozestudio.com'
    layout false

    def confirmation_instructions(user_id)
      @user = resource_class.find(user_id)
      @confirmation_token = JWT.encode({ confirm: true, :"#{resource_sym}_id" => @user.id }, ::Senape.jwt_secret, 'HS256')

      mail(to: @user.email,
           subject: 'Confirmation instructions')
    end
  end
end
