class ClientsController < ApplicationController
   before_action :set_attention, only: [:show, :delete, :edit,:update] 
   def index
    @client = Client.all
  end
  
  def new
  	@client = Client.new
  end
  def create
    @client = Client.new(client_params)
      if @client.save
        redirect_to clients_path
      else
        redirect_to clients_path
       end	
end

 def destroy
  @client = Client.find(params[:id])
   @client.destroy
  redirect_to clients_path

end
def edit
  @client = Client.find(params[:id])
end


def update
 respond_to do |format|
      if @client.update(client_params)
        format.html {redirect_to attentions_path(@client), notice: 'Se Actualizaron los datos'}
      else
        render :edit
      end
    end
end

private
def client_params
	params.require(:client).permit(  :prevision, :user_id)
 end

  def set_client
      @client = Client.find(params[:id])
  end
  
end
