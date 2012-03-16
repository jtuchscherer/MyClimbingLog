require 'test_helper'

class SessionControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should post create" do
    post :create, email: users(:one).email, password: 'MyString'
    assert_redirected_to climbing_log_path
  end

  test "should delete destroy" do
    delete :destroy
    assert_redirected_to climbing_log_path
  end

end
