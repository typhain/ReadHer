class ApplicationController < ActionController::Base
    #protect_from_forgery with: exception 
    #permit additionnal parameters in devise 
    before_action :configure_permitted_parameters, if: :devise_controller?
    #before_action :masquerade_user!
    
    #skip_before_action :verify_authenticity_token

    protected
    
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:avatar])
        devise_parameter_sanitizer.permit(:account_update, keys: [:avatar])
    end
end
