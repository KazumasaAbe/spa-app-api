class Api::V1::HostDetailsController < ApplicationController
  def index
    host_details = HostDetail.all
    render json: host_details.as_json(only: [:latitude, :longitude])
  end
end
