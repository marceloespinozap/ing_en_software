class UsersController < ApplicationController
  load_and_authorize_resource

  def index
    @users = User.where.not(:id => current_user.id)
  end

  def new
    @user = User.new
        @role = params[:role]
    @user.build_client
    @user.build_professional
             end


def option
end
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Usuario creado con exito."
      redirect_to attentions_path
    else
      flash[:notice] = "Problemas al registrar usuario, intenta nuevamente."

      redirect_to users_option_path
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    params[:user].delete(:password) if params[:user][:password].blank?
    params[:user].delete(:password_confirmation) if params[:user][:password].blank? and params[:user][:password_confirmation].blank?

    if @user.update(user_params)
      flash[:notice] = "Usuario actualizado."
      redirect_to attentions_path
    else
      render :action => 'edit'
    end
  end

  def destroy
    @user = User.find(params[:id])

    if @user.destroy
      flash[:notice] = "Usuario eliminado."
      redirect_to attentions_path
    end
  end
  private

  def user_params
     params.require(:user).permit(:email, :password, :password_confirmation, :nombre,:fecha_nacimiento , :numero_contacto , :direccion, :role,  client_attributes: [:id, :prevision, :user_id], professional_attributes: [:id, :start_contract, :end_contract, :type_contract, :specialty_id, :user_id])
  end
end
