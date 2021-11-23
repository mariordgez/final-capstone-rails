class Api::V1::ReservationsController < ApplicationController
  def index
    render json: { data: Reservation.all }
  end

  def create
    @reservation = Reservation.new(reservation_params)
    if @reservation.save
      render json: {
        data: Reservation.all,
      }, status: :created
    else
      render json: {
        data: Reservation.all,
        message: format_errors
      }, status: :not_acceptable
    end
  rescue StandardError => e
    render json: { error: e.message }, status: :bad_request
  end


  private

  def format_errors
    errors = []
    @reservation.errors.full_messages.each do |msg|
      errors << { message: msg }
    end
    errors
  end

  def reservation_params
    params.permit(:date, :city, :car_id, :user_id)
  end
end
