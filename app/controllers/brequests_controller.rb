class BrequestsController < ApplicationController
  def new
  	@brequest = Brequest.new
  end


  def create
    @brequest = Brequest.new(brequest_params)
    if @brequest.save
      redirect_to workshop_path(params[:brequest][:workshop_id])
    end
  end


  def show
  end
end



private

  def brequest_params
    params.require(:brequest).permit(:name, :email, :message, :date, :workshop_id)
  end