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

  def index
    render json: { data: Car.all, message: 'Car list successfully fetched!' }
  end

  def create
    @car = Car.new(car_params)
    if @car.save
      render json: {
        data: Car.all,
        message: 'Car succesfully added.'
      }, status: :created
    else
      render json: {
        data: Car.all,
        message: format_errors
      }, status: :not_acceptable
    end
  rescue StandardError => e
    render json: { error: e.message }, status: :bad_request
  end

  def update
    car = Car.find(params[:id])
    car.update_columns(removed: params[:car][:removed])
    car.save!
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
