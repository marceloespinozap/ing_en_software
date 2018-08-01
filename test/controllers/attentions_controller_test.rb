require 'test_helper'

class AttentionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get attentions_index_url
    assert_response :success
  end

  test "should get new" do
    get attentions_new_url
    assert_response :success
  end

  test "should get edit" do
    get attentions_edit_url
    assert_response :success
  end

  test "should get _form" do
    get attentions__form_url
    assert_response :success
  end

end
