class Api::V1::CarsController < ApplicationController
  def index
    render json: [*Car.all]
  end

  def create
    @car = Car.new(car_params)
    if @car.save
      render json: { message: 'Car succesfully saved!' }
    else
      render json: format_errors
    end
  end

  private

  def format_errors
    errors = []
    @car.errors.full_messages.each do |msg|
      errors << { message: msg }
    end
    errors
  end

  def car_params
    params.permit(:name, :model, :brand, :price, :image_url, :removed)
  end
end
