require 'test_helper'

class CompetanceFrameworkControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get competance_framework_index_url
    assert_response :success
  end

  test "should get new" do
    get competance_framework_new_url
    assert_response :success
  end

  test "should get create" do
    get competance_framework_create_url
    assert_response :success
  end

  test "should get show" do
    get competance_framework_show_url
    assert_response :success
  end

  test "should get update" do
    get competance_framework_update_url
    assert_response :success
  end

  test "should get destroy" do
    get competance_framework_destroy_url
    assert_response :success
  end

end
