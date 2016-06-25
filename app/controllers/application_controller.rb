class ApplicationController < ActionController::API

  # When database record is not found
  rescue_from ActiveRecord::RecordNotFound, with: :not_found
  def not_found
    render json: { error: 'Not found' }, status: 404
  end

  private

  def authenticate_user_from_token!
    user_token = request.headers['HO-Token']
    token      = user_token && User.find_by_token(user_token)

    if token
      @user = User.find_by_token(user_token)
    else
      render json: { error: 'Unable to authenticate user. Please check the request headers.' }, status: 401
    end
  end
end
