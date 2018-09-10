class AttentionsClientsController < ApplicationController
  def index
  	  	@attention = Attention.all
  	  	@client=Client.all
  	  	@user=User.all.order(nombre: :asc)
  end

  def show

  	      @attention = Attention.find(params[:id])
  	  	  	@attention1 = Attention.all.order(attention_date: :asc)

  end
end
