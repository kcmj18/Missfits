require 'test_helper'

class PageControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get page_home_url
    assert_response :success
  end

  test "should get classes" do
    get page_classes_url
    assert_response :success
  end

  test "should get people" do
    get page_people_url
    assert_response :success
  end

  test "should get inbox" do
    get page_inbox_url
    assert_response :success
  end

  test "should get account" do
    get page_account_url
    assert_response :success
  end

  test "should get contact_us" do
    get page_contact_us_url
    assert_response :success
  end

end
