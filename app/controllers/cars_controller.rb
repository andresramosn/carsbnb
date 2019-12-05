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
    if params[:query].present?
      @cars = Car.geocoded #returns cars with coordinates

      @cars = Car.where("address ILIKE ?", "%#{params[:query]}%")


      @markers = @cars.map do |car|
      {
        lat: car.latitude,
        lng: car.longitude
      }
      end
    else
      @cars = Car.geocoded #returns cars with coordinates
      @cars = Car.all

      @markers = @cars.map do |car|
      {
        lat: car.latitude,
        lng: car.longitude
      }
      end
    end
  end

  def show
    @car = Car.find(params[:id])
    @reservation = Reservation.new
    @markers = [{
      lat: @car.latitude,
      lng: @car.longitude
    }]
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
