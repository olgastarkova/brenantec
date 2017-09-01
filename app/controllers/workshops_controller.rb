class WorkshopsController < ApplicationController
 before_action :set_workshop, only: [:show, :update, :destroy]

	def index
		@workshops = Workshop.all
	end

	def show
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
	end

	def update
		@workshop.update(workshop_params)
	end

	def destroy
		@workshop.destroy
	end
end



	private

	def set_workshop
		@workshop = Workshop.find(params[:id])
	end

	def workshop_params
		params.require(:workshop).permit(:title, :description, :capacity, :price, :format, :coach_id, photos: [])
	end
