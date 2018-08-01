class ProfessionalsController < ApplicationController
   before_action :set_attention, only: [:show, :delete, :edit,:update]


  def index
    @professional = Professional.all
  end

  def panel
    render :panel
  end


  def new
  	@professional = Professional.new
  end


  def destroy
  @professional = Professional.find(params[:id])
   @professional.destroy
  redirect_to professionals_path
  end


  def create
    @professional = Professional.new(professional_params)
      if @professional.save
        redirect_to professionals_path
      else
		    render :new
       end
  end


  def edit
    @professional = Professional.find(params[:id])
  end


  def update
   respond_to do |format|
        if @professional.update(professional_params)
          format.html {redirect_to attentions_path(@professional), notice: 'Se Actualizaron los datos'}
        else
          render :edit
        end
      end
  end


  private
  def professional_params
  	params.require(:professional).permit( :type_contract, :specialty_id, :start_contract, :end_contract, :user_id)
   end

    def set_professional
        @professional = professional.find(params[:id])
    end

  end
