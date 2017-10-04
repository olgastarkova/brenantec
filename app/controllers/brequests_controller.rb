class BrequestsController < ApplicationController
  before_action :set_brequest, only: [:show, :destroy]

  def index
    @brequests = Brequest.all
  end  

  def new
  	@brequest = Brequest.new
  end


  def create
    @brequest = Brequest.new(brequest_params)
    @brequest.nb_guests = brequest_params[:nb_guests].to_i
    if @brequest.save && controller_name == 'workshops'
      redirect_to workshop_path(params[:workshop_id])
    elsif @brequest.save
      redirect_to root_path
    end
  end


  def show
  end

  def destroy
    @brequest.destroy
  end


end



private

  def set_brequest
    @brequest = Brequest.find(params[:id])
  end



  def brequest_params
    params.require(:brequest).permit(:name, :email, :message, :date, :workshop_id, :checkin, :checkout, :nb_guests, :subject)
  end



