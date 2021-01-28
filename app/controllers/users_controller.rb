class UsersController < ApplicationController
  def new
      @user = User.new
    end

    def create
      @user = User.new(params[:user])
      if @user.save
        redirect_to root_url, :notice => "Signed up!"
      else
        render "new"
      end
    end
  end
# def new
#   @user = User.new
# end
#
# def create
#   @user = User.new(user_params)
#   if @user.save
#    redirect_to articles_path
#   else
#    render 'new'
#   end
#  end
#
# def signup
# end
#
# def login
# end
#
# def logout
# end
#
#  def update
#   user = User.find(params[:id])
#   if @user.update(user_params)
#     flash[:success] = "Updated successfully"
#    redirect_to articles_path
#   else
#    render 'edit'
#   end
#  end
#
#  def edit
#   @user = User.find(params[:id])
#  end
#
#  def destroy
#    session[:user_id] = nil
#    flash[:success] = "You have logged out"
#    redirect_to root_path
#   end
#
# private
# def user_params
#   params.require(:user).permit(:username, :email, :password)
# end
#
# end
