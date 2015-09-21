class UsersController < ApplicationController
  def index
    @users = User.all
  end
  
  def new
    @users = User.new
  end

  def create
    user = User.new(params.require(:user).permit(:name))

    if user.save
      redirect_to user
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
  end

end
