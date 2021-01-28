class SessionsController < ApplicationController
# def new
#  end
#
#  def create
#   user = User.find_by(email: params[:email)
#   if user  && user.authenticate(params[:password])
#    session[:user_id] = user.id
#    redirect_to article_path
#   else
#    flash[:error] = "There was something wrong with your login information"
#      redirect_to signup_path
#   end
#  end
#
#  def destroy
#   session[:user_id] = nil
#   flash[:success] = "You have logged out"
#   redirect_to signup_path
#  end
def new
  end

  def create
    if # authenticated?
      session[:user_id] = user.id
      redirect_to root_url, :notice => "Logged in!"
    else
      flash.now.alert = "Invalid email or password"
      render "new"
    end
  end


def create
user = User.find_by_email(params[:email])
  if user && user.authenticate(params[:password])
    session[:user_id] = user.id
    redirect_to root_url, :notice => "Logged in!"
  else
    flash.now.alert = "Invalid email or password"
    render "new"
  end
end

def destroy
  session[:user_id] = nil
  redirect_to root_url, :notice => "Logged out!"
end
