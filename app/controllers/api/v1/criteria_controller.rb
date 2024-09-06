class Api::V1::CriteriaController < ApplicationController
  def index
    @criteria = Location.pluck(:criteria).flatten.uniq
    render json: @criteria
  end
end
