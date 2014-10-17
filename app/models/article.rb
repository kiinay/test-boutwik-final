class Article < ActiveRecord::Base
  belongs_to :product

  mount_uploader :picture, PictureUploader

  validates_presence_of :description, :title
  attr_accessible :description, :picture, :title
end
