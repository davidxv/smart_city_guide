module SmartCityGuide
  module Controllers
    module OmniauthCallbacksController
      extend ActiveSupport::Concern

      def fiware
        @user = User.find_or_create_for_linkedin_oauth(env['omniauth.auth'],current_user)

        if @user.persisted?
          sign_in_and_redirect @user, :event => :authentication
        end
      end
    end
  end
end


