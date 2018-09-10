require 'test_helper'

class AttentionsClientsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get attentions_clients_index_url
    assert_response :success
  end

  test "should get show" do
    get attentions_clients_show_url
    assert_response :success
  end

end
