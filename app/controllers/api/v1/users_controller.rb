class Api::V1::UsersController < ApplicationController
  before_action :set_user, only: [:update, :show]


  def index
    @users = User.all
    render json: @users
  end
  
  def show
  end

  def update
    if @user.update(user_params)
      render json: {status: 200}
    else
      render json: @user.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destory
  end


  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.permit(:email, :host_name, :host_id)
  end

end
