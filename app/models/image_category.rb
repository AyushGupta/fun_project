class ImageCategory < ActiveRecord::Base
  attr_accessible :description, :title
  has_many :images
end
