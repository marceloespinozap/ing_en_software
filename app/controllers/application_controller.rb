class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!
  layout :elegir_layout

  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = exception.message
    redirect_to root_url
  end


   
  
private

  def elegir_layout
    case action_name
    when "new", "create"
      "Panel"
    when "index"
      "Panel"
    else
      "Panel"
    end
  end
end
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nombre,:fecha_nacimiento , :numero_contacto , :direccion, :role])
  end

