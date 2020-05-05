class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [
                                        :comuna_id, :imagen, :edad, :telefono, :gusto_id,
                                        :nombre, :email, :password, :remember_me
                                      ])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:email, :password, :remember_me])
    devise_parameter_sanitizer.permit(:account_update, keys: [
                                        :comuna_id, :imagen, :edad, :telefono, :gusto_id,
                                        :nombre, :descripcion, :email, :password,
                                        :current_password
                                      ])
  end
end
