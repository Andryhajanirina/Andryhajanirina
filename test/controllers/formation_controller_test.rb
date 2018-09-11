require 'test_helper'

class FormationControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get formation_index_url
    assert_response :success
  end

  test "should get new" do
    get formation_new_url
    assert_response :success
  end

  test "should get create" do
    get formation_create_url
    assert_response :success
  end

  test "should get show" do
    get formation_show_url
    assert_response :success
  end

  test "should get update" do
    get formation_update_url
    assert_response :success
  end

end
