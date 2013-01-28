class HomeController < ApplicationController
  def index
    @image_categories = ImageCategory.all
  end
  protected
  def not_found
    flash[:error] = "Image category not found."
    redirect_to images_path
  end
end
