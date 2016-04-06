require 'test_helper'

class ProvaControllerTest < ActionController::TestCase
  test "should get federico" do
    get :federico
    assert_response :success
  end

  test "should get egeo" do
    get :egeo
    assert_response :success
  end

  test "should get luciano" do
    get :luciano
    assert_response :success
  end

end
