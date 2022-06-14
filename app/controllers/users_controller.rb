class UsersController < ApplicationController
  before_action :only => [:new, :edit, :create, :update, :destroy] do
    redirect_to new_user_session_path unless current_user && current_user.admin
  end

  def index
    @users = User.all
    render :index
  end

  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "User successfully created!"
      redirect_to users_path
    end
  end

  def edit
    @user = User.find(params[:id])
    render :edit
  end

  def show
    @user = User.find(params[:id])
    render :show
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "User successfully updated!"
      redirect_to new_user_path
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:notice] = "User successfully DESTROYED!!"
    redirect_to users_path
  end

  def home
  
  end

  private
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation, :name, :resource)
    end

  
end