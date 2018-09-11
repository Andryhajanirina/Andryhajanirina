require 'test_helper'

class CompetanceCmsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get competance_cms_index_url
    assert_response :success
  end

  test "should get new" do
    get competance_cms_new_url
    assert_response :success
  end

  test "should get create" do
    get competance_cms_create_url
    assert_response :success
  end

  test "should get show" do
    get competance_cms_show_url
    assert_response :success
  end

  test "should get update" do
    get competance_cms_update_url
    assert_response :success
  end

  test "should get destroy" do
    get competance_cms_destroy_url
    assert_response :success
  end

end
