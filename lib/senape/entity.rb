module Senape
  module Entity
    def confirmed?
      confirmed_at.present?
    end
  end
end
