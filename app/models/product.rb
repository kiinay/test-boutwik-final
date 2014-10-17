class Product < ActiveRecord::Base
  has_many :articles

  mount_uploader :picture, PictureUploader

  validates_presence_of :description, :name
  attr_accessible :description, :name, :picture
end
