require "test_helper"

class OwnitemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ownitem = ownitems(:one)
  end

  test "should get index" do
    get ownitems_url
    assert_response :success
  end

  test "should get new" do
    get new_ownitem_url
    assert_response :success
  end

  test "should create ownitem" do
    assert_difference('Ownitem.count') do
      post ownitems_url, params: { ownitem: { item_id: @ownitem.item_id, price: @ownitem.price, sellstatus: @ownitem.sellstatus, user_id: @ownitem.user_id } }
    end

    assert_redirected_to ownitem_url(Ownitem.last)
  end

  test "should show ownitem" do
    get ownitem_url(@ownitem)
    assert_response :success
  end

  test "should get edit" do
    get edit_ownitem_url(@ownitem)
    assert_response :success
  end

  test "should update ownitem" do
    patch ownitem_url(@ownitem), params: { ownitem: { item_id: @ownitem.item_id, price: @ownitem.price, sellstatus: @ownitem.sellstatus, user_id: @ownitem.user_id } }
    assert_redirected_to ownitem_url(@ownitem)
  end

  test "should destroy ownitem" do
    assert_difference('Ownitem.count', -1) do
      delete ownitem_url(@ownitem)
    end

    assert_redirected_to ownitems_url
  end
end
