require File.expand_path(File.dirname(__FILE__) + '/../test_config.rb')

class CkuploadTest < Test::Unit::TestCase
  context "Ckupload Model" do
    should 'construct new instance' do
      @ckupload = Ckupload.new
      assert_not_nil @ckupload
    end
  end
end
