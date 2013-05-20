class SessionsController < ApplicationController
  def new
  end
  
  def destroy
  	session[:user_id] = nil
  	redirect_to root_url, :notice => "See ya later, alligator"
  end
  
  def create
  	user = User.find_by_email(params[:email])
  	if user && user.authenticate(params[:password])
  	  session[:user_id] = user.id
  	  redirect_to blabs_url, :notice => "Greetings, earthling"
  	else
  	  flash[:error] = "Email or password is invalid"
  	  render 'new'
  	end
  end
end
