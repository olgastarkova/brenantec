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

    if @brequest.save && @brequest.subject == "contact"
      BrequestMailer.contact(@brequest).deliver_now
      flash[:notice] = 'Merci ! Votre message a bien été envoyé.'
      redirect_to workshop_path(params[:workshop_id])
    elsif @brequest.save && @brequest.subject == "accommodation"
      BrequestMailer.accommodation(@brequest).deliver_now
      flash[:notice] = 'Merci ! Votre demande de réservation a bien été envoyée.'
      redirect_to blue_path
    elsif @brequest.save && @brequest.subject == "workshop"
      BrequestMailer.workshop(@brequest).deliver_now
      flash[:notice] = 'Merci ! Votre demande de participation a bien été envoyée.'
      redirect_to workshop_path(params[:workshop_id])
    elsif @brequest.save && @brequest.subject == "tailor_made"
      BrequestMailer.tailor_made(@brequest).deliver_now
      flash[:notice] = 'Merci ! Votre demande de renseignement a bien été envoyée.'
      redirect_to workshop_path(params[:workshop_id])   
    elsif @brequest.save
      redirect_to root_path
      flash[:notice] = 'Merci ! Votre message a bien été envoyé.'
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
    params.require(:brequest).permit(:name, :email, :message, :date, :workshop_id, :checkin, :checkout, :nb_guests, :subject, :quantity)
  end



