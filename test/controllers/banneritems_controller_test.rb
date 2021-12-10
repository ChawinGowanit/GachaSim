require "test_helper"

class BanneritemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @banneritem = banneritems(:one)
  end

  test "should get index" do
    get banneritems_url
    assert_response :success
  end

  test "should get new" do
    get new_banneritem_url
    assert_response :success
  end

  test "should create banneritem" do
    assert_difference('Banneritem.count') do
      post banneritems_url, params: { banneritem: { banner_id: @banneritem.banner_id, item_id: @banneritem.item_id } }
    end

    assert_redirected_to banneritem_url(Banneritem.last)
  end

  test "should show banneritem" do
    get banneritem_url(@banneritem)
    assert_response :success
  end

  test "should get edit" do
    get edit_banneritem_url(@banneritem)
    assert_response :success
  end

  test "should update banneritem" do
    patch banneritem_url(@banneritem), params: { banneritem: { banner_id: @banneritem.banner_id, item_id: @banneritem.item_id } }
    assert_redirected_to banneritem_url(@banneritem)
  end

  test "should destroy banneritem" do
    assert_difference('Banneritem.count', -1) do
      delete banneritem_url(@banneritem)
    end

    assert_redirected_to banneritems_url
  end
end
