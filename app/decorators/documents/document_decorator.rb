require 'smart_city_guide'

Document.class_eval do
  include SmartCityGuide::Models::Document
end
