class SessionsController < ApplicationController
before_action :set_session, only: [:show, :edit, :update, :destroy]

	def index
		@sessions = Session.all
	end

	def show

	end

	def new
		@session = Session.new
		@workshops = Workshop.all
	end

	def create
		@session = Session.new(session_params)
		if @session.save
			redirect_to workshop_path(params[:session][:workshop_id])
		else
			render "sessions/new"
		end
	end

	def edit
		@workshops = Workshop.all
	end

	def update
		if @session.update(session_params)
			redirect_to workshop_path(params[:session][:workshop_id])
		else
			render "sessions/new"
		end
	end

	def destroy
		@session.destroy
	end
end



	private

	def set_session
		@session = Session.find(params[:id])
	end

	def session_params
		params.require(:session).permit(:date, :available, :workshop_id)
	end
