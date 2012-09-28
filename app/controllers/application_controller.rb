class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :get_categories
  
  def get_categories
    @image_categories=ImageCategory.all
  end
end
