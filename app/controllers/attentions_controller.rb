class AttentionsController < ApplicationController

 before_action :set_attention, only: [:show, :delete, :edit,:update]
  layout :elegir_layout


  def index
  	@attention = Attention.all
  end

  def pdf
      @attention = Attention.find(params[:id])
      respond_to do |format|
          format.html
          format.js
          format.pdf do
             render pdf: "documento",
             template: "attentions/show.html.erb"
end
  end
end

  def show
      @attention = Attention.find(params[:id])
  end

  def destroy
     @attention = Attention.find(params[:id])
     @attention.destroy
     redirect_to attentions_path
  end

  def new
  	@attention = Attention.new
  end


  def delete
    @attention.destroy
  end



  def create
    @attention = Attention.new(attention_params)
      if @attention.save
        redirect_to attentions_path
      else

        render :new
      end

  end


def edit
  @attention = Attention.find(params[:id])
end


def update
 @attention = Attention.find(params[:id])
 respond_to do |format|
      if @attention.update(attention_params)
        format.html {redirect_to attentions_path(@attention), notice: 'Se Actualizaron los datos'}
      else
        render :edit
      end
    end
end

private
def attention_params
	params.require(:attention).permit(:professional_id, :client_id , :attention_date, :attention_time, :description, :detail)
 end

  def set_attention
      @attention = Attention.find(params[:id])
  end

end
