class DaysController < ApplicationController
  before_action :set_day, only: [:edit, :update, :destroy]

  def index
    @days = Day.all
  end

  def show
    @day = params[:id] ? Day.find(params['id']) : Day.today || Day.new
  end

  def edit
  end

  def create
    @day = Day.new(day_params)

    respond_to do |format|
      if @day.save
        format.html { redirect_to @day, notice: 'Gracias' }
        format.json { render :show, status: :created, location: @day }
      else
        format.html { render :new }
        format.json { render json: @day.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @day.update(day_params)
        format.html { redirect_to @day, notice: 'Gracias' }
        format.json { render :show, status: :ok, location: @day }
      else
        format.html { render :edit }
        format.json { render json: @day.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @day.destroy
    respond_to do |format|
      format.html { redirect_to days_url, notice: 'day was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_day
      @day = Day.find(params[:id])
    end

    def day_params
      params.require(:day).permit(:feeling, :song, :desire, :pain, :pain_level)
    end
end
