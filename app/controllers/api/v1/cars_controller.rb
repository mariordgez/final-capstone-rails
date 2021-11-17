class Api::V1::CarsController < ApplicationController
    def show
        @car = Car.find(params[:id]) rescue nil
        
        unless @car.nil? 
            render json: {
                data: @car,
                message: "successful"
              }, status: :ok
        else
            render json: {
                data: [],
                message: "Car not found"
              }, status: :bad_request
        end
    end
end
