class Api::V1::CarsController < ApplicationController
  def index
    render json: [*Car.all]
  end

  def create
    @car = Car.new(car_params)
    if @car.save
      render json: { message: 'Car succesfully added.' }, status: :created
    else
      render json: format_errors, status: :not_acceptable
    end
  rescue StandardError => e
    render json: { error: e.message }, status: :bad_request
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
