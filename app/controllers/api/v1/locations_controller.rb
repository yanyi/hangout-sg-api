class Api::V1::LocationsController < ApplicationController

  # GET /api/v1/locations
  def index
    locations = Location.all

    render json: locations, status: 200 # ok
  end

  # GET /api/v1/locations/1
  def show
    location = Location.find(params[:id])

    render json: location, status: 200 # ok
  end
end
