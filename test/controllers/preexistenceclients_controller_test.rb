require 'test_helper'

class PreexistenceclientsControllerTest < ActionDispatch::IntegrationTest
  test "should get _form" do
    get preexistenceclients__form_url
    assert_response :success
  end

  test "should get index" do
    get preexistenceclients_index_url
    assert_response :success
  end

  test "should get edit" do
    get preexistenceclients_edit_url
    assert_response :success
  end

  test "should get new" do
    get preexistenceclients_new_url
    assert_response :success
  end

end
