class HomesController < ApplicationController
	def index
		@projects = Project.all
		render :layout => "gomakproduction"
	end
end
