require "application_system_test_case"

class OwnitemsTest < ApplicationSystemTestCase
  setup do
    @ownitem = ownitems(:one)
  end

  test "visiting the index" do
    visit ownitems_url
    assert_selector "h1", text: "Ownitems"
  end

  test "creating a Ownitem" do
    visit ownitems_url
    click_on "New Ownitem"

    fill_in "Item", with: @ownitem.item_id
    fill_in "Price", with: @ownitem.price
    check "Sellstatus" if @ownitem.sellstatus
    fill_in "User", with: @ownitem.user_id
    click_on "Create Ownitem"

    assert_text "Ownitem was successfully created"
    click_on "Back"
  end

  test "updating a Ownitem" do
    visit ownitems_url
    click_on "Edit", match: :first

    fill_in "Item", with: @ownitem.item_id
    fill_in "Price", with: @ownitem.price
    check "Sellstatus" if @ownitem.sellstatus
    fill_in "User", with: @ownitem.user_id
    click_on "Update Ownitem"

    assert_text "Ownitem was successfully updated"
    click_on "Back"
  end

  test "destroying a Ownitem" do
    visit ownitems_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ownitem was successfully destroyed"
  end
end
