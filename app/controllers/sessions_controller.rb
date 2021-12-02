class SessionsController < ApplicationController

def create 
    if  user = User.find_by(username: params[:username])
  
    session[:user_id] = user.id
 else 
    user = User.create(username: params[:username])
 end

    render json: user
end

def destroy
    session.delete :user_id
    head :no_content
end





end
