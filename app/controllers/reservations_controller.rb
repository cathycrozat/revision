class ReservationsController < ApplicationController
  before_action :set_flat, only: %i[new create show ]

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.flat = @flat
    @reservation.user = current_user
    @reservation.price = ((@reservation.end_date - @reservation.start_date) * @reservation.flat.daily_price).to_i
    if @reservation.save
      redirect_to flat_reservation_path(@flat, @reservation)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @reservation = Reservation.find(params[:id])
    authorize @reservation
  end

  def index
    @reservations = Reservation.all
    @user = current_user
    @user_reservation = @user.reservations
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to reservations_path, status: :see_other
  end

  private

  def set_flat
    @flat = flat.find(params[:flat_id])
  end

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date, :flat_id, :user_id)
  end

end
