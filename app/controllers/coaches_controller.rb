class CoachesController < ApplicationController
	before_action :set_coach, only: [:show, :edit, :update, :destroy]

	def index
		@coaches = Coach.all
	end

	def show
	end

	def new
		@coach = Coach.new
	end

	def create
		@coach = Coach.new(coach_params)
		if @coach.save
			redirect_to coach_path(@coach)
		else
			render "coaches/new"
		end
	end

	def edit
	end

	def update
		if @coach.update(coach_params)
			redirect_to coach_path(@coach)
		else
			render "coaches/edit"
		end
	end

	def destroy
		@coach.destroy
	end
end



	private

	def set_coach
		@coach = Coach.find(params[:id])
	end

	def coach_params
		params.require(:coach).permit(:name, :role, :intro, :active, :photo)
	end
