class ApplicationController < ActionController::Base
    #protect_from_forgery with: exception
    #permit additionnal parameters in devise
    before_action :configure_permitted_parameters, if: :devise_controller?
    #before_action :masquerade_user!
    add_flash_types :danger, :info, :warning, :success


    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:avatar, :pseudo, :first_name,:last_name, :email, :city, :description])
        devise_parameter_sanitizer.permit(:account_update, keys: [:avatar, :pseudo, :first_name, :last_name, :email, :city, :description])
    end

    def disable_nav
      @disable_nav = true
    end

    def disable_footer
      @disable_footer = true
    end

    # def after_sign_in_path_for(resource)
    #   stored_location_for(resource) || crushes_path
    # end
    #
    # def after_sign_up_path_for(resource)
    #   stored_location_for(resource) || crushes_path
    # end
    #
    # def after_update_path_for(resource)
    #   stored_location_for(resource) || user_path(current_user)
    # end

end
