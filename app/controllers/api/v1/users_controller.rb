class Api::V1::UsersController < ApplicationController
  # before_filter :authenticate_user_from_token!, only: [ :show, :update ]
  before_action :set_user, only: [ :show, :update ]

  # GET /api/v1/users/1
  def show
    render json: @user
  end

  # POST /api/v1/users
  def create
    user = User.new(user_params)
    user.id = params[:user_id]

    if user.save
      render json: user
    else
      render json: user.errors, status: 422
    end
  end

  # PATCH /api/v1/users/1
  def update
    if @user.update(user_params)
      render json: @user, status: 200 # ok
    else
      render json: @user.errors, status: 422 # unprocessable_entity
    end
  end

  # POST /api/v1/users/get_id
  def get_id
    user = User.find_by_token(params[:token])

    render json: user, status: 200 # ok
  end

  private

  def user_params
    params.permit(:user_id, :email, :username, :profile_image_url, :token, :area_id)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
