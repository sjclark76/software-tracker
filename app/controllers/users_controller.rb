class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  def index
    @users = User.all
  end

  def show
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

  def edit
    @is_create = false
  end

  def update
    if @user.update(user_params)

      redirect_to users_url , notice: "User was updated successfully."
    end
  end

  def destroy
    @user.destroy
    redirect_to users_url , notice: "User was deleted successfully."
  end
end

def set_user
  @user = User.find(params[:id])
end

def user_params
  params.require(:user).permit(:first_name, :last_name)
end
