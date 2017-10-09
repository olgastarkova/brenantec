class PagesController < ApplicationController
  def home
  end


  def about
    @contact = Contact.new
    @coaches = Coach.all.order(:id)
  end

  def accommodation
  end

  def blue
    @contact = Contact.new
  end

  def stylesheet
  end

  def dashboard
    @coaches = Coach.all
    @workshops = Workshop.all
    @programsteps = Programstep.all
    @sessions = Session.all
    @brequests = Brequest.all
  end

end
