require 'test_helper'

class ContentsControllerTest < ActionController::TestCase
  test "should get career" do
    get :career
    assert_response :success
  end

  test "should get services" do
    get :services
    assert_response :success
  end

  test "should get packs" do
    get :packs
    assert_response :success
  end

  test "should get resources" do
    get :resources
    assert_response :success
  end

  test "should get stories" do
    get :stories
    assert_response :success
  end

  test "should get terms" do
    get :terms
    assert_response :success
  end

  test "should get privacy" do
    get :privacy
    assert_response :success
  end

end
