class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new

  end

  def create
    @user = params[:user][:owner] ? Owner.new(user_params) : Customer.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      params[:user][:owner] ? (redirect_to restaurents_path ): (redirect_to user_path(@user))

    else
      redirect_to new_user_path
    end
  end

  private
  def user_params
    params.require(:user).permit(:firstname, :lastname, :email, :password)
  end
end
