require 'carrierwave/orm/activerecord'
class Image < ActiveRecord::Base
  has_one :imageset_image
  has_one :imageset, through: :imageset_image
  mount_uploader :file, Uploader
  accepts_nested_attributes_for :imageset_image
  
  scope :primary, ->() { joins(:imageset_image => :imageset).where("imageset_images.primary = true").order("imagesets.number") }
end
