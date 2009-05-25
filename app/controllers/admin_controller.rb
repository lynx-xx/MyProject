class AdminController < ApplicationController
  before_filter :authenticate

  def index
  end

  private

  def authenticate
    authenticate_or_request_with_http_basic do |name, password|
      name == "admin" && password == "lynxweb1"
    end
  end
end

