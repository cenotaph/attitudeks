require File.expand_path(File.dirname(__FILE__) + '/../test_config.rb')

class ImagesetImagesTest < Test::Unit::TestCase
  context "ImagesetImages Model" do
    should 'construct new instance' do
      @imageset_images = ImagesetImages.new
      assert_not_nil @imageset_images
    end
  end
end
