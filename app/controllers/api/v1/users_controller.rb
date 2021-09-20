class Api::V1::UsersController < ApplicationController
  before_action :set_user, only: [:update, :show, :destroy]


  def index
    @users = User.all
    render json: @users
  end
  
  def show
    render json: @user
  end

  def update
    if @user.update(user_params)
      render json: {status: 200}
    else
      render json: @user.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    @user.destroy
    render json: {statsu: 200}
  end


  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.permit(:email, :host_name, :host_id)
  end

end
