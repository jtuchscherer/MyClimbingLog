require 'test_helper'

class RoutesControllerTest < ActionController::TestCase
  setup do
    @route = routes(:one)
    @gym = gyms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:routes)
  end

  test "should get new when gym_id specified" do
    get :new, gym_id: @gym
    assert_response :success
  end
  
  test "should throw exception when no gym_id specified" do
    get :new
    assert_response 302
  end

  test "should create route" do
    assert_difference('Route.count') do
      post :create, route: @route.attributes
    end

    assert_redirected_to route_path(assigns(:route))
  end

  test "should show route" do
    get :show, id: @route
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @route
    assert_response :success
  end

  test "should update route" do
    put :update, id: @route, route: @route.attributes
    assert_redirected_to route_path(assigns(:route))
  end

  test "should destroy route" do
    assert_difference('Route.count', -1) do
      delete :destroy, id: @route
    end

    assert_redirected_to routes_path
  end
end
