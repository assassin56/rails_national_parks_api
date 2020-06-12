class NationalParksController < ApplicationController

  def index
    @national_parks = NationalPark.all
    json_response(@national_parks)
  end

  def show
    @national_park = NationalPark.find(params[:id])
    json_response(@national_park)
  end

  def create
    @national_park = NationalPark.create!(park_params)
    json_response(@national_park, :created)
  end

  def update
    @national_park = NationalPark.find(params[:id])
    if @national_park.update!(park_params)
      render status: 200, json: {
        message: "This National Park has been updated successfully!"
      }
    end
  end

  def destroy
    @national_park = NationalPark.find(params[:id])
    if @national_park.destroy
      render status: 200, json: {
        message: "National Park successfully destroyed :("
      }
    end
  end

  private
    def json_response(object, status = :ok)
      render json: object, status: status
    end

    def park_params
      params.permit(:national_park, :state)
    end
end