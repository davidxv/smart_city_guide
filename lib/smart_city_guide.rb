module SmartCityGuide
	module Models
		autoload :Place, 'smart_city_guide/models/place'
	end
  module Controllers
    autoload :OmniauthCallbacksController, 'smart_city_guide/controllers/omniauth_callbacks_controller'
  end
end