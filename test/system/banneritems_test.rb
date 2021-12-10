require "application_system_test_case"

class BanneritemsTest < ApplicationSystemTestCase
  setup do
    @banneritem = banneritems(:one)
  end

  test "visiting the index" do
    visit banneritems_url
    assert_selector "h1", text: "Banneritems"
  end

  test "creating a Banneritem" do
    visit banneritems_url
    click_on "New Banneritem"

    fill_in "Banner", with: @banneritem.banner_id
    fill_in "Item", with: @banneritem.item_id
    click_on "Create Banneritem"

    assert_text "Banneritem was successfully created"
    click_on "Back"
  end

  test "updating a Banneritem" do
    visit banneritems_url
    click_on "Edit", match: :first

    fill_in "Banner", with: @banneritem.banner_id
    fill_in "Item", with: @banneritem.item_id
    click_on "Update Banneritem"

    assert_text "Banneritem was successfully updated"
    click_on "Back"
  end

  test "destroying a Banneritem" do
    visit banneritems_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Banneritem was successfully destroyed"
  end
end
