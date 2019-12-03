class ApplicationController < ActionController::Base

  before_action :store_user_location!, if: :storable_location?
  before_action :authenticate_user!
  skip_before_action :authenticate_user!, only: [:home, :index]
  private

  def storable_location?
    request.get? && is_navigational_format? && !devise_controller? && !request.xhr?
  end

  def store_user_location!
    store_location_for(:user, request.fullpath)
  end
end
