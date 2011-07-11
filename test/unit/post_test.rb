require 'test_helper'

class PostTest < ActiveSupport::TestCase
  
  test "to_s" do
    @post = Post.new(:title => 'asdasd')
    assert @post.to_s == @post.title
  end
end
