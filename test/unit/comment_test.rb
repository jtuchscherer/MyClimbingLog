require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  test "title and route cannot be empty" do
    comment = Comment.new
    assert comment.invalid?
    assert comment.errors[:title].any?
    assert comment.errors[:route_id].any?
  end
  
  test "content cannot be longer than 1000 chars" do
    comment = Comment.new
    comment.content = SecureRandom.urlsafe_base64(1001)
    assert comment.invalid?
    assert comment.errors[:content].any?
  end
  
  test "errors added to user_id and ip_address if both are empty" do
    comment = Comment.new
    assert comment.invalid?
    assert comment.errors[:user_id].any?
    assert comment.errors[:ip_address].any?
  end
  
  test "no errors added to user_id and ip_address if user is present" do
    comment = Comment.new
    comment.user_id = 1 
    assert comment.errors[:user_id].empty?
    assert comment.errors[:ip_address].empty?
  end
  
  test "no errors added to user_id and ip_address if ip address is present" do
    comment = Comment.new
    comment.ip_address = 1 
    assert comment.errors[:user_id].empty?
    assert comment.errors[:ip_address].empty?
  end
  
end
