class ApplicationController < ActionController::Base

    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

    def configure_permitted_parameters

        devise_parameter_sanitizer.permit(:sign_up, keys: [:comuna_id, :ur_imagen, :ur_edad, :ur_telefono, :gusto_id, :ur_nombre, :email, :password, :remember_me])
        devise_parameter_sanitizer.permit(:sign_in, keys: [:email, :password, :remember_me])
        devise_parameter_sanitizer.permit(:account_update, keys: [:comuna_id, :ur_imagen, :ur_edad, :ur_telefono, :gusto_id, :ur_nombre, :ur_descripcion, :email, :password, :current_password])
        
    end
    

end
