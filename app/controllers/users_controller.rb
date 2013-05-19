class UsersController < ApplicationController
	
	def new
		@user = User.new
	end

	def create
		@user = User.new(params[:user])
		if @user.save
			session[:user_id] = @user_id
			redirect_to root_url, :notice => 'Prepare to blab!'
		else
			render 'new'
		end
	end
end