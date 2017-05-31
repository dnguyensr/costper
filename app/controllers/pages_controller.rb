class PagesController < ApplicationController
  def index
  end

  def users
    @users = User.all
  end

  def toggleadmin
    if current_user && current_user.admin?
      user = User.find(params[:id])
      user.toggle!(:admin)
      redirect_to users_page_path, notice: "User privileges have been updated"
    else
      redirect_to users_page_path, notice: "Additional privileges required"
    end
  end

  def toggleapproved
    if current_user && current_user.admin?
      user = User.find(params[:id])
      user.toggle!(:approved)
      user.save
      redirect_to users_page_path, notice: "User privileges have been updated"
    else
      redirect_to users_page_path, notice: "Additional privileges required"
    end
  end

end
