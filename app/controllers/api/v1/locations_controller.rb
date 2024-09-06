class Api::V1::LocationsController < ApplicationController
  def index
    if params[:title].present?
      @locations = Location.where('title ILIKE ?', "%#{params[:title]}%")
    else
      @locations = Location.all
    end
    render json: @locations.order(created_at: :desc)
  end

  def create
    @location = Location.new(location_params)
    if @location.save
      render json: @location, status: :created
    else
      render json: { error: @location.errors.messages }, status: :unprocessable_entity
    end
  end

  private

  def location_params
    params.require(:location).permit(:title, :address, :picture, :photo, criteria: [])
  end
end
