class Api::V1::HostDetailsController < ApplicationController
  before_action :set_host_detail, only: [:show, :update, :destroy]

  def index
    host_details = HostDetail.includes(:tags)
    host_details_tags = host_details.map.to_json(include: :tags)
    render json: host_details_tags
  end

  def show
    render json: @host_detail
  end

  def create
    @host_detail = HostDetail.new(host_detail_params)
    if @host_detail.save
      render json: { status: 200 }
    else
      render json: @host_detail.errors, status: :unprocessable_entity
    end
  end

  def update
    host_detail_tag_params[:tags].each do |item|
      if item[:id].present?
        host_detail_tag = Tag.find(item[:id])
        host_detail_tag.update(item)
      else
        host_detail_tag = @host_detail.tags.new(tag: host_detail_tag_params[:tags][:tag])
        host_detail_tag.save
      end
    end
    if @host_detail.update(host_detail_params)
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

    def set_host_detail
      @host_detail = HostDetail.find_by(id: params[:id])
    end

    def host_detail_params
      params.permit(:name,
                    :latitude,
                    :longitude,
                    :rate,
                    :description,
                    :link,
                    :address,
                    :marker_icon,
                    :image,
                    :maximum_acceptability
                  )
    end

    def acceptable_params
      params.permit(:acceptable)
    end

    def set_host_detail
      @host_detail = HostDetail.find_by(id: params[:id])
    end
end
