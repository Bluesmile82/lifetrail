class AdvicesController < ApplicationController
  before_action :set_advice, only: [:show, :edit, :update, :destroy]

  def index
    @advices = Advice.all
  end

  def show
  end

  def new
    @advice = Advice.new
  end

  def edit
  end

  def create
    @advice = Advice.new(advice_params)

    if @advice.save
      redirect_to advices_path, notice: 'Gracias'
    else
      render :new
    end
  end

  def update
    if @advice.update(advice_params)
      redirect_to @advice, notice: 'Gracias'
    else
      render :edit
    end
  end

  def destroy
    @advice.destroy
    redirect_to advices_url, notice: 'Gracias'
  end

  private
    def set_advice
      @advice = Advice.find(params[:id])
    end

    def advice_params
      params.require(:advice).permit(:text)
    end
end
