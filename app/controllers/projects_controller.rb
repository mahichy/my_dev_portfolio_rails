class ProjectsController < ApplicationController

	def index
		@projects = Project.all.order(:tag)
	end

	def new
	end

	def create
	end

	def show
		@project = Project.find(params[:id])
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private

	def find_project
	end

	def params_project
		params.require(:project).permit(:name, :description)
	end

end