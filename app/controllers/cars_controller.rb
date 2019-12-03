class CarsController < ApplicationController
  before_action :set_user, only: [:new, :create]

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    @car.user = @user
    if @car.save
      redirect_to car_path(@car)
    else
      render :new
    end
  end

  def update
  end

  def index
    @cars = Car.all
  end

  def show
  end

  def destroy
  end

  def edit
  end

  private
  def car_params
    params.require(:car).permit(:price, :model, :brand, :address, :description, :photo)
  end

  def set_user
    @user = User.find(params[:user_id])
  end

end
