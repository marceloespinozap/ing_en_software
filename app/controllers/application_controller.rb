class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!
  rescue_from CanCan::AccessDenied do |exception|

    flash[:error] = exception.message
    redirect_to root_url

  end


  if @current_user == "client"
     layout 'Panel'
  end

  if @current_user == "professional"
      layout 'Profesional'
  end

  if @current_user == "admin"
      layout 'Admin'
  end

  def users



  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nombre,:fecha_nacimiento , :numero_contacto , :direccion, :role])
  end
end
