module Senape
  module Jwt
    def with_valid_token(token)
      payload = ::JWT.decode(token, ::Senape.jwt_secret, true, algorithm: 'HS256').first
      yield(payload)
    end
  end
end