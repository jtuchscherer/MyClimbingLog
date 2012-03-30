require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "name, email and password cannot be null" do 
    user = User.new
    assert user.invalid?
  end

  test "usernames are unique" do
    name = "test@test.com"
    user1 = User.new
    user1.name = name
    user1.email = SecureRandom.urlsafe_base64(8)
    user1.password = "Password"
    user1.password_confirmation = "Password"
    
    assert user1.save
    
    user2 = User.new
    user2.name = name
    user2.email = SecureRandom.urlsafe_base64(8)
    user2.password = "Password"
    
    user2.password_confirmation = "Password"
    
    assert !user2.save
  end
  
  test "emails are unique" do
    email = "test@test.com"
    user1 = User.new
    user1.name = SecureRandom.urlsafe_base64(8)
    user1.email = email
    user1.password = "Password"
    user1.password_confirmation = "Password"
    
    assert user1.save
    
    user2 = User.new
    user2.name = SecureRandom.urlsafe_base64(8)
    user2.email = email
    user2.password = "Password"
    
    user2.password_confirmation = "Password"
    
    assert !user2.save
  end
end
