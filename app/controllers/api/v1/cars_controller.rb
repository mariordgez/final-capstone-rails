class Api::V1::CarsController < ApplicationController
  def show
    @car = begin
      Car.find(params[:id])
    rescue StandardError
      nil
    end

    if @car.nil?
      render json: {
        data: [],
        message: 'Car not found'
      }, status: :bad_request
    else
      render json: {
        data: @car,
        message: 'successful'
      }, status: :ok
    end
  end
end
