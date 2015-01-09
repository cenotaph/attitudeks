class Imageset < ActiveRecord::Base
  has_many :images, through: :imageset_images
  has_many :imageset_images
  accepts_nested_attributes_for :imageset_images
  validates_presence_of :title, :number, :description
  
  extend FriendlyId
  friendly_id :name_and_number, use: :slugged
  
  def name_and_number
    "#{number}-#{title}"
  end
  
end
