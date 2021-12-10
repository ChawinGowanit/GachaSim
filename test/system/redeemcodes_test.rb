require "application_system_test_case"

class RedeemcodesTest < ApplicationSystemTestCase
  setup do
    @redeemcode = redeemcodes(:one)
  end

  test "visiting the index" do
    visit redeemcodes_url
    assert_selector "h1", text: "Redeemcodes"
  end

  test "creating a Redeemcode" do
    visit redeemcodes_url
    click_on "New Redeemcode"

    fill_in "Code", with: @redeemcode.code
    fill_in "Creditamount", with: @redeemcode.creditAmount
    check "Status" if @redeemcode.status
    click_on "Create Redeemcode"

    assert_text "Redeemcode was successfully created"
    click_on "Back"
  end

  test "updating a Redeemcode" do
    visit redeemcodes_url
    click_on "Edit", match: :first

    fill_in "Code", with: @redeemcode.code
    fill_in "Creditamount", with: @redeemcode.creditAmount
    check "Status" if @redeemcode.status
    click_on "Update Redeemcode"

    assert_text "Redeemcode was successfully updated"
    click_on "Back"
  end

  test "destroying a Redeemcode" do
    visit redeemcodes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Redeemcode was successfully destroyed"
  end
end
