require 'test_helper'

class CompetanceSgbdControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get competance_sgbd_index_url
    assert_response :success
  end

  test "should get new" do
    get competance_sgbd_new_url
    assert_response :success
  end

  test "should get create" do
    get competance_sgbd_create_url
    assert_response :success
  end

  test "should get show" do
    get competance_sgbd_show_url
    assert_response :success
  end

  test "should get update" do
    get competance_sgbd_update_url
    assert_response :success
  end

  test "should get destroy" do
    get competance_sgbd_destroy_url
    assert_response :success
  end

end
