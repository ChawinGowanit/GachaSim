require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  setup do

    @user = users(:one)
    @user2 = users(:two)
  end
  #register
  test "User Register" do
    visit "/main"
    click_on "Register"

    fill_in "Username", with: @user.username
    fill_in "Password", with: 'secret'
    fill_in "Password confirmation", with: 'secret'
    click_on "Create User"

    assert_text "Please review the problems below:"

    fill_in "Username", with: "test user"
    fill_in "Password", with: 'secret'
    fill_in "Password confirmation", with: 'secret'
    click_on "Create User"

    assert_text "Please Login"
  end

  #login
  test "User login" do
    visit "/main"

    fill_in "Username", with: @user.username
    fill_in "Password", with: 'wrongpasswoed'
    click_on "Login"
    assert_text "Incorrect username or Password."

    fill_in "Username", with: @user.username
    fill_in "Password", with: 'secret'
    click_on "Login"

    assert_text "Login successfully."
    assert_text "Total Credit : 1320"

  end

  #banner
  test "Banners" do
    #Log in
    visit "/main"
    fill_in "Username", with: @user.username
    fill_in "Password", with: 'secret'
    click_on "Login"

    #See Banner In System
    assert_text "Blue Archive"

    #Rule Modal
    click_on "Rule"
    assert_text "1. Each banner contain the following rarity and rate"
    assert_text "0.056818181%"
    page.execute_script('$(document.elementFromPoint(50, 350)).click();')

  end
  #Like Banner
  test "Like Banner" do
    visit "/main"
    fill_in "Username", with: @user.username
    fill_in "Password", with: 'secret'
    click_on "Login"

    #first user like
    assert_text "total like : 0"
    click_button('Like', exact: true)
    assert_text "total like : 1"

    #test unlike
    click_button('Unlike', exact: true)
    assert_text "total like : 0"
    click_button('Like', exact: true)

    #test other user like
    visit "/main"
    fill_in "Username", with: @user2.username
    fill_in "Password", with: 'secret'
    click_on "Login"
    assert_text "total like : 1"
    click_button('Like', exact: true)
    assert_text "total like : 2"
    
    #test other user like
    visit "/main"
    fill_in "Username", with: @user.username
    fill_in "Password", with: 'secret'
    click_on "Login"
    assert_text "total like : 2"


  end

  #Show Banner
  test "Show Banner" do
    visit "/main"
    fill_in "Username", with: @user.username
    fill_in "Password", with: 'secret'
    click_on "Login"

    click_on "Show"
    click_on "See Rate"
    assert_text "Aru"
    assert_text "Chise"
    assert_text "Serina"
  end

  #pull
  test "Pull" do
    visit "/main"
    fill_in "Username", with: @user.username
    fill_in "Password", with: 'secret'
    click_on "Login"
    #Single Pull
    click_on "Show"
    click_on "Pull"
    assert_text "Item Recieved"  
    assert_text "Total Credit : 1200"  
    click_on "Back"
    #10 Pull
    click_on "Pullx10"
    assert_text "Item Recieved"  
    assert_text "Total Credit : 0"
  end

  #sell and item
  test "Sell and buy" do

    visit "/main"
    fill_in "Username", with: @user.username
    fill_in "Password", with: 'secret'
    click_on "Login"
    #check item in inventory
    click_on "Inventory"
    assert_text "Aru"
    assert_text "Chise"
    assert_text "Serina"
    #sell item
    all(:button, 'sell')[0].click
    all(:button, 'sell')[0].click
    all(:button, 'sell')[0].click

    #check sell item in market
    visit "/main"
    fill_in "Username", with: @user2.username
    fill_in "Password", with: 'secret'
    click_on "Login"
    click_on "Market"
    assert_text "Aru"
    assert_text "Chise"
    assert_text "Serina"

    #Check Buy item
    #use credit
    all(:button, 'buy')[0].click
    assert_text "Total Credit : 660" 
    #use credit
    all(:button, 'buy')[1].click
    assert_text "Total Credit : 600" 
    #add transaction in buy log
    click_on "Total Credit : 600" 

    assert_text "6000" 
    assert_text "60" 
    #add item in inventory
    click_on "Inventory" 

    assert_text "Aru"
    assert_text "Serina"

    
    visit "/main"
    fill_in "Username", with: @user.username
    fill_in "Password", with: 'secret'
    click_on "Login"
    #check credit increase
    assert_text "Total Credit : 7380"  

    #check sold item log
    click_on "Total Credit : 7380"     
    assert_text "6000" 
    assert_text "60" 

    #cancel remaining item
    click_on "Inventory"
    assert_text "Chise" 

    #cancel selling
    all(:button, 'cancel')[0].click
    #sell again
    all(:button, 'sell')[0].click
  end

  test "Redeem Code" do
    visit "/main"
    fill_in "Username", with: @user.username
    fill_in "Password", with: 'secret'
    click_on "Login"
    click_on "Total Credit : 1320"     
    fill_in "Code", with: "testRedeemCode"
    click_on "Redeem"
    assert_text "Total Credit : 101320"  
    #used redeem code   
    fill_in "Code", with: "testRedeemCode"
    click_on "Redeem"
    assert_text "Total Credit : 101320" 
    assert_text "Invalid redeem code."     
    


    
  end
end
