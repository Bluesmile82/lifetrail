class PeopleController < ApplicationController
  before_action :set_person, only: [:show, :edit, :update, :destroy]

  def index
    @people = Person.all
    @people = @people.where(city: params[:city])if params[:city]
  end

  def show
  end

  def new
    @person = Person.new
  end

  def edit
  end

  def create
    @person = Person.new(person_params)

    if @person.save
      redirect_to people_path, notice: 'Gracias'
    else
      render :new
    end
  end

  def update
    if @person.update(person_params)
      redirect_to people_path, notice: 'Gracias'

    else
      render :edit
    end
  end

  def destroy
    @person.destroy
    redirect_to people_url, notice: 'Gracias'
  end

  private
    def set_person
      @person = Person.find(params[:id])
    end

    def person_params
      params.require(:person).permit(:name, :city, :last_date_seen, :mood, :personality, :birthday, :likes, "birthday(1i)", ":birthday(2i)", ":birthday(3i)")
    end
end
