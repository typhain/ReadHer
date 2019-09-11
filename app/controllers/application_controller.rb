class ApplicationController < ActionController::Base
<<<<<<< HEAD
    #protect_from_forgery with: exception 
    #permit additionnal parameters in devise 
    before_action :configure_permitted_parameters, if: :devise_controller?
    #before_action :masquerade_user!

    protected
    
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:avatar])
        devise_parameter_sanitizer.permit(:account_update, keys: [:avatar])
    end
=======

>>>>>>> 61a2e45c4ca102ca31e755a277f532d1d6bcf7f8
end
