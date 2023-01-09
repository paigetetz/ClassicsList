class ApplicationController < ActionController::API
  include ActionController::Cookies

  before_action :authorize

  private
  
  def authorize
    @current_user = User.find_by(id: session[:user_id])
    render json: { error: 'Unauthorized' }, stautus: :unauthorized
  end
end
