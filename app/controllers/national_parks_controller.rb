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
    @national_park.update(park_params)
  end

  def destroy
    @national_park = NationalPark.find(params[:id])
    @national_park.destroy
  end

  private
    def json_response(object, status = :ok)
      render json: object, status: status
    end

    def park_params
      params.permit(:national_park, :state)
    end
end