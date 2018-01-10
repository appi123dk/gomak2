class HomesController < ApplicationController
	def index
		@projects = Project.all.reverse_order
		render :layout => "gomakproduction"
	end
end
