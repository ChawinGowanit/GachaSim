require "test_helper"

class RedeemcodesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @redeemcode = redeemcodes(:one)
  end

  test "should get index" do
    get redeemcodes_url
    assert_response :success
  end

  test "should get new" do
    get new_redeemcode_url
    assert_response :success
  end

  test "should create redeemcode" do
    assert_difference('Redeemcode.count') do
      post redeemcodes_url, params: { redeemcode: { code: @redeemcode.code, creditAmount: @redeemcode.creditAmount, status: @redeemcode.status } }
    end

    assert_redirected_to redeemcode_url(Redeemcode.last)
  end

  test "should show redeemcode" do
    get redeemcode_url(@redeemcode)
    assert_response :success
  end

  test "should get edit" do
    get edit_redeemcode_url(@redeemcode)
    assert_response :success
  end

  test "should update redeemcode" do
    patch redeemcode_url(@redeemcode), params: { redeemcode: { code: @redeemcode.code, creditAmount: @redeemcode.creditAmount, status: @redeemcode.status } }
    assert_redirected_to redeemcode_url(@redeemcode)
  end

  test "should destroy redeemcode" do
    assert_difference('Redeemcode.count', -1) do
      delete redeemcode_url(@redeemcode)
    end

    assert_redirected_to redeemcodes_url
  end
end
