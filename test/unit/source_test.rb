require 'test_helper'

class SourceTest < ActiveSupport::TestCase
  
  test 'import' do
    raw_items = [{"title" => 'test', "description" => 'testy'}]
    @source = Source.create(:url => 'http://blog.test.com/rss', :name => "Test blog")
    @source.save
    @source.import_posts(raw_items)
    assert @source.posts.count == raw_items.size
  end
end
