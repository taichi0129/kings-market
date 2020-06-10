class Skills::SearchesController < ApplicationController
  def index
    @skill = Skill.find_by(date: params[:date])
    gon.skill = @skill
    @comment = Comment.new
    @comments = @skill.comments.includes(:user)
  end
end
