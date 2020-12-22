require 'test_helper'

class TdcControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tdc_index_url
    assert_response :success
  end

end
