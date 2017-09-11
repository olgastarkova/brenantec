class ProgramstepsController < ApplicationController
before_action :set_programstep, only: [:show, :edit, :update, :destroy]

	def index
		@programsteps = Programstep.all
	end

	def show
	end

	def new
		@programstep = Programstep.new
		@workshops = Workshop.all
	end

	def create
		@programstep = Programstep.new(programstep_params)
		if @programstep.save
			redirect_to workshop_path(params[:programstep][:workshop_id])
		else
			render "programsteps/new"
		end
	end

	def edit
	end

	def update
		@programstep.update(programstep_params)
	end

	def destroy
		@programstep.destroy
	end
end



	private

	def set_programstep
		@programstep = Programstep.find(params[:id])
	end

	def programstep_params
		params.require(:programstep).permit(:start_time, :end_time, :description, :workshop_id)
	end

