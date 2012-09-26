class HomeController < ApplicationController
  def index
    @image_categories = ImageCategory.all
  end
end
