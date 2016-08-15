module Senape
  class ApplicationController < ActionController::Base
    include Senape::Helpers
    include Senape::Jwt
  end
end
