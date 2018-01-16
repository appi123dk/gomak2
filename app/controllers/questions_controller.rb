class QuestionsController < ApplicationController
	def index
		@questions = Question.all.reverse_order	
	end

	def responses

		question = Question.find(params[:id])
		question.is_response = !question.is_response
		question.save

		redirect_to '/questions/index'
	end

	skip_before_action :verify_authenticity_token
	def create
		username = params[:username]
		email = params[:email]
		contents = params[:contents]

		question = Question.new
		question.username = username
		question.email = email
		question.phone = params[:phone]
		question.contents = contents
		question.save

	
		# @mail = NoticeMailer.sendmail_inquire(username, email, contents).deliver_now

		redirect_to '/homes/index'
	end

	def spam_delete
		question = Question.find(params[:id])
		question.destroy

		redirect_to '/questions/index'
	end
end
