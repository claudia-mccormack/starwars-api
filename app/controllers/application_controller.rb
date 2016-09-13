class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

  before_action :restrict_access

  private

  def restrict_access
    authenticate_or_request_with_http_token do |api_key, options|
      User.find_by(email: request.headers['X-User-Email'], api_key: api_key)
    end
  end
end
