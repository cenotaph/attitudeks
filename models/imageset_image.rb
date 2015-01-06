class ImagesetImage < ActiveRecord::Base
  belongs_to :image
  belongs_to :imageset
  
end
