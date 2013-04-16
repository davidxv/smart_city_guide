class ApplicationController < ActionController::Base
  protect_from_forgery

  def after_sign_in_path_for(resource_or_scope)
  # return home_page_path for user using current_user method
    root_path
  end
end
