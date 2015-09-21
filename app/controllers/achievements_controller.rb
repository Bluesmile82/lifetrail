class AchievementsController < ApplicationController
  before_action :set_achievement, only: [:show, :edit, :update, :destroy]

  def index
    @achievements = Achievement.all
  end

  def show
  end

  def new
    @achievement = Achievement.new
  end

  def edit
  end

  def create
    @achievement = Achievement.new(achievement_params)

    if @achievement.save
      redirect_to achievements_path, notice: 'Gracias'
    else
      render :new
    end
  end

  def update
    if @achievement.update(achievement_params)
      redirect_to @achievement, notice: 'Gracias'
    else
      render :edit
    end
  end

  def destroy
    @achievement.destroy
    redirect_to achievements_url, notice: 'Gracias'
  end

  private
    def set_achievement
      @achievement = Achievement.find(params[:id])
    end

    def achievement_params
      params.require(:achievement).permit(:name)
    end
end
