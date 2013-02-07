require 'smart_city_guide'

Place.class_eval do
  include SmartCityGuide::Models::Place
end
