class WishesController < ApplicationController
  before_action :set_wish, only: [:show, :edit, :update, :destroy]

  def index
    @wishes = Wish.all
  end

  def show
  end

  def new
    @wish = Wish.new
  end

  def edit
  end

  def create
    @wish = Wish.new(wish_params)

    if @wish.save
      redirect_to wishes_path, notice: 'Gracias'
    else
      render :new
    end
  end

  def update
    if @wish.update(wish_params)
      redirect_to @wish, notice: 'Gracias'
    else
      render :edit
    end
  end

  def destroy
    @wish.destroy
    redirect_to wishes_url, notice: 'Gracias'
  end

  private
    def set_wish
      @wish = Wish.find(params[:id])
    end

    def wish_params
      params.require(:wish).permit(:text)
    end
end
