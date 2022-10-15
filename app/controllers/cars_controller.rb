class CarsController < ApplicationController
  before_action :set_car, only: %i[ show edit update destroy ]


  def index
    @cars = Car.all
  end


  def show
  end


  def new
    @car = Car.new
  end


  def edit
  end


  def create
    @car = Car.new(car_params)
    @car.user_id=current_user.id
    respond_to do |format|
      if @car.save
        redirect_to car_url(@car), notice: "car was successfully created."
      else
        render :new, status: :unprocessable_entity
      end
    end
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
      params.require(:car).permit(:brand, :model, :color, :year, :price)
    end
end
