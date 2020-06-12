class ParksConroller < ApplicationController

  def index
    @national_parks = {"national_park": "Hot Springs National Park"}
    json_response(@national_parks)
  end

  private
    def json_response(object, status = :ok)
      render json: object status: status
    end
end