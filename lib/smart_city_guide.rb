module SmartCityGuide
  module Place
    extend ActiveSupport::Concern

    included do
      has_and_belongs_to_many :trips
      has_and_belongs_to_many :guides
      has_and_belongs_to_many :routes
    end
  end
end
