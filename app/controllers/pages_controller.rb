class PagesController < ApplicationController
  def home
  end


  def about
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
  end

end
