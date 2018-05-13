class Admins::UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :authenticate_admin

  def index
    @users = User.all
  end

  def update
    @user = User.find(params[:id])
    @user.role = "admin"
    @user.save
  end

  private

  def admin?
    current_user.role == "admin"
  end

  def authenticate_admin
    unless admin?
      redirect_to root_path
    end
  end

end
