class WorkshopsController < ApplicationController
	before_action :set_workshop, only: [:show, :edit, :update, :destroy]

	def index
		@workshops = Workshop.all
	end

	def show
		@programsteps = @workshop.programsteps
	end

	def new
		@workshop = Workshop.new
		@coaches = Coach.all
	end;


	def create
		@workshop = Workshop.new(workshop_params)
		if @workshop.save
			redirect_to workshop_path(@workshop)
		else
			render "workshops/new"
		end
	end

	def edit
		@coaches = Coach.all
	end



	def update
		if @workshop.update(workshop_params)
			redirect_to workshop_path(@workshop)
		else
			render :edit
		end
	end



	def destroy
		@workshop.destroy
	end


	def tailor_made
	end
end



private

	def set_workshop
		@workshop = Workshop.find(params[:id])
		@programsteps = Programstep.where(params[:workshop_id])

	end

	def workshop_params
		params.require(:workshop).permit(:title, :description, :capacity, :price, :format, :coach_id, photos: [])
	end
