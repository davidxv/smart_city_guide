require 'smart_city_guide'

OmniauthCallbacksController.class_eval do
  include SmartCityGuide::Controllers::OmniauthCallbacksController
end
