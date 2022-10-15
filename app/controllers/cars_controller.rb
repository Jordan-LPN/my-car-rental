class CarsController < ApplicationController
  before_action :set_car, only: %i[ show edit update destroy ]


  def index
    @cars = Car.all
  end


  def show
  end


  def new
    @car = car.new
  end


  def edit
  end


  def create
    @car = car.new(car_params)
  end


  def update
  end


  def destroy
    @car.destroy
  end

  private
    def set_car
      @car = car.find(params[:id])
    end
    def car_params
      params.require(:car).permit(:name, :address)
    end
end
