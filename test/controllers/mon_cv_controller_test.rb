require 'test_helper'

class MonCvControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mon_cv_index_url
    assert_response :success
  end

  test "should get new" do
    get mon_cv_new_url
    assert_response :success
  end

  test "should get create" do
    get mon_cv_create_url
    assert_response :success
  end

  test "should get show" do
    get mon_cv_show_url
    assert_response :success
  end

  test "should get update" do
    get mon_cv_update_url
    assert_response :success
  end

end
