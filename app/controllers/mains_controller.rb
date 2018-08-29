class MainsController < ApplicationController
	def index
		@projects = Project.where('is_main = ?', true)
		render :layout => "renew"
	end

	def projects
		@projects = Project.all
		render :layout => "renew"
	end

	def project
		@project = Project.find(params[:id])
		@projects = Project.where.not(id: @project.id)
		render :layout => "renew"
	end

	def about
		render :layout => "renew"
	end

	def contacts
		render :layout => "renew"
	end

	def ajax
		@project = Project.find(params[:project_id])
		render json: @project
	end
end
