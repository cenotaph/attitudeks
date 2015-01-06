require File.expand_path(File.dirname(__FILE__) + '/../test_config.rb')

class ImagesetTest < Test::Unit::TestCase
  context "Imageset Model" do
    should 'construct new instance' do
      @imageset = Imageset.new
      assert_not_nil @imageset
    end
  end
end
