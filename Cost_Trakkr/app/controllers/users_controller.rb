class UsersController < ApplicationController
  def index
    @users = User.all
  end
  
  def new
    @users = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    user = User.new(params.require(:user).permit(:name, :budget, :debts))

    if user.save
      redirect_to user
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    if user.update(user_params)
    redirect_to user
    else
    redner :edit
    end
  end

  def destroy
    user = User.find(params[:id]).destroy
    redirect_to user
  end

  private

  def user_params
      params.require(:user).permit(:name, :budget, :debts)
  end

end
