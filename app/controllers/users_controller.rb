class UsersController < ApplicationController
  before_action :logged_in_user, only: [:edit, :update]
  before_action :admin_user,     only: :destroy

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

  private
  def user_params
    params.require(:user).permit(:full_name, :user_name, :email, :website_url, :linkedin_link, :twitter_link, :facebook_link, :dribbble_link, :ello_link, :instagram_link, :description, :occupation)
  end

  def logged_in_user
    unless logged_in?
      flash[:danger] = "Please log in."
        redirect_to root_path
    end
  end

  def admin_user
    redirect_to(root_url) unless current_user.admin?
  end
end
