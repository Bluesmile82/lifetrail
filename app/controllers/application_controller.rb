class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
  before_action :set_locale
  http_basic_authenticate_with name: ENV['user'], password: ENV['password']

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def default_url_options
    { locale: I18n.locale == I18n.default_locale ? nil : I18n.locale }
  end


end
