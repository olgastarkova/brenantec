class PagesController < ApplicationController
  def home
  end


  def about
    @brequest = Brequest.new
    @coaches = Coach.all
  end

  def accommodation
  end

  def blue
    @brequest = Brequest.new
  end

  def stylesheet
  end

  def dashboard
    @coaches = Coach.all
    @workshops = Workshop.all
    @programsteps = Programstep.all
    @sessions = Session.all
  end

end
