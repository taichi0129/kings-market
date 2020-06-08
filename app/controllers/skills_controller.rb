class SkillsController < ApplicationController
  def index
  end
  def new
    @skill = Skill.new
  end
  def create
    @skill = Skill.new(skill_params)
    if @skill.save
      redirect_to root_path, notice: '登録が完了しました'
    else
      redirect_to new_skill_path, alert: '登録出来ませんでした。再度登録してください。'
    end
  end
  def show
    @skill = Skill.find(params[:id])
    gon.skill = @skill
    @comment = Comment.new
    @comments = @skill.comments.includes(:user)
  end

  private
  def skill_params
    params.require(:skill).permit(:date, :stock, :front, :service, :order, :loss, :pop, :clean, :analysis, :info, :sale).merge(user_id: current_user.id)
  end
end

