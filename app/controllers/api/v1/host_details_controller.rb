class Api::V1::HostDetailsController < ApplicationController
  before_action :set_host_detail, only: [:show, :update, :destroy]

  def index
    @host_details = HostDetail.all #.includes(:tags)
    #@host_detail = HostDetail.find(3)
    #@tags = @host_detail.tags
    #render :formats => :json and return
    render json: @host_details
  end

  def show
    render json: @host_detail
  end

  def create
    @host_detail = HostDetail.new(create_host_detail)
    if @host_detail.save
      render json: { status: 200 }
    else 
      render json: @host_detail.errors, status: :unprocessable_entity
    end
  end

  def update
    if @host_detail.update(create_host_detail)
      render json: { status: 200 }
    else
      render json: @host_detail.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @host_detail.destroy
    render json: { status: 200 }
  end

  def update_acceptable
    @host_detail = HostDetail.find_by(id: params[:id])
    if @host_detail.update(acceptable_params)
      render json: {status: 200}
    else
      render json: @host_detail.errors, status: :unprocessable_entity
    end
  end

  private
    def create_host_detail
      params.permit(:name,
                    :latitude,
                    :longitude,
                    :rate,
                    :description,
                    :link,
                    :address,
                    :marker_icon,
                    :image,
                    :maximum_acceptability)
    end

    def acceptable_params
      params.permit(:acceptable)
    end

    def set_host_detail
      @host_detail = HostDetail.find_by(id: params[:id])
    end
end
