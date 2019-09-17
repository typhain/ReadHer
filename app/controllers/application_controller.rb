class ApplicationController < ActionController::Base
    #protect_from_forgery with: exception
    #permit additionnal parameters in devise
    before_action :configure_permitted_parameters, if: :devise_controller?
    #before_action :masquerade_user!
    add_flash_types :danger, :info, :warning, :success


    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:avatar, :first_name,:last_name, :email, :city, :description, :username])
        devise_parameter_sanitizer.permit(:account_update, keys: [:avatar, :first_name, :last_name, :email, :city, :description])
    end
end
