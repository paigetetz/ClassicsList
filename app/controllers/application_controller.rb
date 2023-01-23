class ApplicationController < ActionController::API
  include ActionController::Cookies

  before_action :authorize, :current_user

  private
  
  def authorize
    @current_user = User.find_by(id: session[:user_id])
    render json: { error: 'Unauthorized' }, stautus: :unauthorized
  end
  def current_user
    @current_user = User.find_by(id: session[:user_id])
  end
  # def current_user
  #   @current_user ||= User.find_by(id: session[:user_id])
  # end
end
