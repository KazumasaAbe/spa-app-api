class Api::V1::HostDetailsController < ApplicationController
  before_action :set_host_detail, only: [:show, :update, :destroy]

  def index
    @host_details = HostDetail.all
    render json: @host_details
  end

  def show
    render json: @host_detail
  end

  def create
    @host_detail = HostDetail.new(create_host_detail)
    @host_detail.tags.build
    if @host_detail.save
      render json: { status: 200 }
    else 
      render json: @host_detail.errors, status: :unprocessable_entity
    end
  end

  def update
    if @host_detail.update(create_host_details)
      render json: { status: 200 }
    else
      render json: @host_detail.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @host_detail.destroy
    render json: { status: 200 }
  end

  private
    def create_host_detail
      params[:host_detail].permit(:name,
                                  :latitude,
                                  :longitude,
                                  :rate,
                                  :description,
                                  :link,
                                  :address,
                                  :marker_icon,
                                  :image,
                                  :maximum_acceptability,
                                  tags_attributes: [
                                    :tag
                                  ])
    end

    def set_host_detail
      @host_detail = HostDetail.find(params[:id])
    end
end
