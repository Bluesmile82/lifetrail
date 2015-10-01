class ArtsController < ApplicationController
  before_action :set_art, only: [:show, :edit, :update, :destroy]

  def index
    @arts = Art.all
  end

  def show
  end

  def new
    @art = Art.new
  end

  def edit
  end

  def create
    @art = Art.new(art_params)

    if @art.save
      redirect_to arts_path, notice: 'Gracias'
    else
      render :new
    end
  end

  def update
    if @art.update(art_params)
      redirect_to @art, notice: 'Gracias'
    else
      render :edit
    end
  end

  def destroy
    @art.destroy
    redirect_to arts_url, notice: 'Gracias'
  end

  private
    def set_art
      @art = Art.find(params[:id])
    end

    def art_params
      params.require(:art).permit(:title, :author, :url)
    end
end
