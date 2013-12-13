require 'test_helper'

class ContentsControllerTest < ActionController::TestCase
  test "should get advice" do
    get :advice
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

end
