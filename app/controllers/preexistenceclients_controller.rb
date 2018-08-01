class PreexistenceclientsController < ApplicationController
 before_action :set_preexistenceclient, only: [:show, :delete, :edit,:update]


  def index
    @preexistenceclient = Preexistenceclient.all
    @client_id =Client.find(params[:id]).id
  end

  def panel
    render :panel
  end

  def show
      @preexistenceclient = Preexistenceclient.find(params[:id])

  end


  def new
  	@preexistenceclient = Preexistenceclient.new
  end


  def destroy
  @preexistenceclient = Preexistenceclient.find(params[:id])
   @preexistenceclient.destroy
  redirect_to preexistenceclient_path
  end


  def create
    @preexistenceclient = Preexistenceclient.new(preexistenceclient_params)
      if @preexistenceclient.save
        redirect_to preexistenceclients_path
      else
		    render :new
       end
  end


  def edit
    @preexistenceclient = Preexistenceclient.find(params[:id])
  end


  def update
   respond_to do |format|
        if @preexistenceclient.update(preexistenceclient_params)
          format.html {redirect_to preexistenceclients_path(@preexistenceclient), notice: 'Se Actualizaron los datos'}
        else
          render :edit
        end
      end
  end


  private
  def preexistenceclient_params
  	params.require(:preexistenceclient).permit( :client_id, :preexistence_id)
   end

    def set_preexistenceclient
        @preexistenceclient = Preexistenceclient.find(params[:id])
    end

 
end
