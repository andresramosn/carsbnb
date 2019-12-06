class ReservationsController < ApplicationController
  before_action :set_car, only: [:new, :create]


  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.user = current_user
    @reservation.car = @car
    if @reservation.save
      redirect_to edit_car_reservation_path(@reservation)
    else
      render :new
    end
  end

  def index
    @reservations = Reservation.all
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

  end

  def cancel
    @reservation = Reservation.find(params[:id])
    @reservation.status = "cancelled"
    @reservation.save
  end

  def approve
    @reservation = Reservation.find(params[:id])
    @reservation.status = "approved"
    @reservation.save

  end

  private

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date)
  end

  def set_car
    @car = Car.find(params[:car_id])
  end
end
