require File.expand_path(File.dirname(__FILE__) + '/../test_config.rb')

class PageTest < Test::Unit::TestCase
  context "Page Model" do
    should 'construct new instance' do
      @page = Page.new
      assert_not_nil @page
    end
  end
end
