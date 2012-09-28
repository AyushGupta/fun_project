class Image < ActiveRecord::Base
  attr_accessible :description, :image_category_id, :image_url, :title
  belongs_to :image_category
end
