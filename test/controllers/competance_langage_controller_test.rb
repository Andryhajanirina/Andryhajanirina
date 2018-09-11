require 'test_helper'

class CompetanceLangageControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get competance_langage_index_url
    assert_response :success
  end

  test "should get new" do
    get competance_langage_new_url
    assert_response :success
  end

  test "should get create" do
    get competance_langage_create_url
    assert_response :success
  end

  test "should get show" do
    get competance_langage_show_url
    assert_response :success
  end

  test "should get update" do
    get competance_langage_update_url
    assert_response :success
  end

  test "should get destroy" do
    get competance_langage_destroy_url
    assert_response :success
  end

end
