module Senape
  module Helpers
    def resource_class
      Object.const_get(resource_class_name)
    end

    def resource_sym
      resource_class_name.underscore.to_sym
    end

    def resource_class_name
      ::Senape.resource_class_name
    end

    def authenticate
      with_valid_token(headers['Token']) do |payload|
        @current_user = resource_class.find(payload['user_id'])
      end
    end
  end
end
