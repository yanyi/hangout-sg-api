class Api::V1::UsersController < ApplicationController
  before_filter :authenticate_user_from_token!, only: [ :show ]
  
  # GET /api/v1/users/1
  def show
    user = User.find(params[:id])
    render json: user
  end

  # POST /api/v1/users
  def create
    user = User.new(user_params)

    if user.save
      render json: user
    else
      render :json => user.errors, :status => 422
    end
  end

  private

  def user_params
    params.permit(:email, :username, :profile_image_url, :token)
  end

end
