class Api::V1::TagsController < ApplicationController
  before_action :set_tags, only: [:create]
  before_action :reset_tags, only: [:create]

  def create
    if tags_params.present?
        tags_params.each do |item|
          item[1].each do |tag|
          @tag = Tag.new(host_detail_id: params[:id])
          @tag.update(tag)
        end
      end
    end
      render json: { status: 200 }
  end

  private

  def set_tags
    @tags = Tag.where(host_detail_id: params[:id])
  end

  def reset_tags
    @tags.each do |tag|
      tag.destroy
    end
  end

  def tags_params
    params.permit(tags: [
                        :tag
                        ])
end

end
