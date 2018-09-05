class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!
  layout :elegir_layout
helper_method :current_user

  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = exception.message
    redirect_to attentions_path
  end


  def elegir_layout
if user_signed_in?

    if current_user.role == "admin"
     return "Panel"
    end

    if current_user.role == "client"
     return  "Panel"
    end

   if current_user.role == "professional"
    return   "Panel"
   end
      else
        return  "home"
     end
      end

private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nombre,:fecha_nacimiento , :numero_contacto , :direccion, :role])
  end

end
