class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @is_create = true
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to users_url , notice: "User was created successfully."
    else
      render :new
    end
  end

  def destroy
    @user.destroy
    redirect_to users_url , notice: "User was deleted successfully."
  end
end

def set_tool
  @user = User.find(params[:id])
end

def user_params
  params.require(:user).permit(:first_name, :last_name)
end
