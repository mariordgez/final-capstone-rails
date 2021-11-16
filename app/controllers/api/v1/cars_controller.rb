class Api::V1::CarsController < ApplicationController
  def index
    render json: [*Car.all]
  end

  def new
    @car = Car.new
  end

  def create
    @car = 
    if @car.save
      render json: { message: 'Car saved!' }
    else
      render json: { message: 'Car could not be saved'}
    end
  end

  private

  def car_params
    params.permit(:name, :model, :brad, :price, :image_url, :remove)
  end
end
