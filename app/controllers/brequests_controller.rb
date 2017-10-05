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
    @brequest.nb_guests = params[:quantity].to_i

    if @brequest.save && controller_name == 'pages' && @brequest.subject == "contact"
      BrequestMailer.contact(@brequest).deliver_now
      redirect_to workshop_path(params[:workshop_id])
    elsif @brequest.save && controller_name == 'pages' && @brequest.subject == "accommodation"
      BrequestMailer.accommodation(@brequest).deliver_now
      redirect_to workshop_path(params[:workshop_id])
    elsif @brequest.save && @brequest.subject == "workshop"
      BrequestMailer.workshop(@brequest).deliver_now
      redirect_to workshop_path(params[:workshop_id])
    elsif @brequest.save && controller_name == 'workshops' && @brequest.subject == "tailor_made"
      BrequestMailer.tailor_made(@brequest).deliver_now
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



# if @restaurant.save
#   RestaurantMailer.creation_confirmation(@restaurant).deliver_now
#   redirect_to restaurant_path(@restaurant)
# else
#   render :new
# end


private

  def set_brequest
    @brequest = Brequest.find(params[:id])
  end



  def brequest_params
    params.require(:brequest).permit(:name, :email, :message, :date, :workshop_id, :checkin, :checkout, :nb_guests, :subject, :quantity)
  end



