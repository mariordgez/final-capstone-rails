class Api::V1::ReservationsController < ApplicationController
  def index
    render json: [Reservation.all]
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
