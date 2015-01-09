class Ckupload < ActiveRecord::Base
  mount_uploader :data, Uploader, :mount_on => :data_file_name

end
