class UsersController < ApplicationController
  def index
  end
  def show
    if current_user.admin?
      @skills = Skill.includes(:user).order('date DESC')
    else
      @user = User.find(params[:id])
      @skills = @user.skills.order('date DESC')
    end
  end
end
