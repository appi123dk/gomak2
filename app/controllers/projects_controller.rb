class ProjectsController < ApplicationController
	
	def index
		@projects = Project.all		
	end

	def new
		
	end

	def create
		project = Project.new
		project.project_name = params[:project_name]		
		project.brand_name = params[:brand_name]		
		project.video_url = params[:video_url]		
		project.thumb_url = params[:thumb_url]		
		project.save

		redirect_to '/projects/index'
	end

	def edit
		@project = Project.find(params[:id])		
	end

	def update
		project = Project.find(params[:id])
		project.project_name = params[:project_name]		
		project.brand_name = params[:brand_name]		
		project.video_url = params[:video_url]		
		project.thumb_url = params[:thumb_url]		
		project.order = params[:order]		
		project.save

		redirect_to '/projects/index'
	end

	def delete
		project = Project.find(params[:id])
		project.destroy
		redirect_to '/projects/index'
	end

end
