class ContactsController < ApplicationController
  before_action :set_brequest, only: [:destroy]

  def new
  	@contact = Contact.new
  end

  def create
  	@contact = Contact.new(contact_params)
    if params[:quantity]
      @contact.nb_guests = params[:quantity].to_i
    end
    @contact.request = request
    if @contact.deliver
      flash.now[:notice] = 'Thank you for your message. We will contact you soon!'
    else
      flash.now[:error] = 'Cannot send message.'
      render :new
    end
  end
  

  private

  def set_brequest
    @brequest = Brequest.find(params[:id])
  end

  def contact_params
    params.require(:contact).permit(:name, :email, :message, :date, :workshop_id, :checkin, :checkout, :nb_guests, :subject, :quantity)
  end

end
