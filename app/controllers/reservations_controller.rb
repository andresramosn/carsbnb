class ReservationsController < ApplicationController
  before_action :set_car, only: [:new, :create]


  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.user = current_user
    @reservation.car = @car
    if @reservation.save
      redirect_to reservation_path(@reservation)
    else
      render :new
    end
  end

  def index
    @reservations = Reservation.all
    @user_reservations = Reservation.where(user_id: current_user.id)
    @user_cars = Car.where(user_id: current_user.id)
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def edit
    @reservation = Reservation.find(params[:id])
  end

  def reject
    @reservation = Reservation.find(params[:id])
    @reservation.status = "rejected"
    @reservation.save
    redirect_to reservations_path
  end

  def cancel
    @reservation = Reservation.find(params[:id])
    @reservation.status = "cancelled"
    @reservation.save
    redirect_to reservations_path
  end

  def confirm
    @reservation = Reservation.find(params[:id])
    @reservation.status = "confirmed"
    @reservation.save
    redirect_to reservations_path
  end

  private

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date)
  end

  def set_car
    @car = Car.find(params[:car_id])
  end
end
