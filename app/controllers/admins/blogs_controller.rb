class Admins::BlogsController < ApplicationController
  before_action :authenticate_user!
  before_action :authenticate_admin

  def index
    @blogs = Blog.all
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
