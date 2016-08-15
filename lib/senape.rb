require 'jwt'
require "senape/engine"
require "senape/jwt"
require "senape/helpers"
require "senape/entity"

module Senape
  mattr_accessor :jwt_secret, :resource_class_name, :confirmation_strategy, :default_host

  def self.setup
    yield self

    self.resource_class_name   ||= 'User'
    self.confirmation_strategy ||= :token
  end
end
