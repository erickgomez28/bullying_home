require 'test_helper'

class BullyingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bullyings_index_url
    assert_response :success
  end

  test "should get show" do
    get bullyings_show_url
    assert_response :success
  end

  test "should get edit" do
    get bullyings_edit_url
    assert_response :success
  end

end
