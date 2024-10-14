require "application_system_test_case"

class UserExtensionsTest < ApplicationSystemTestCase
  setup do
    @user_extension = user_extensions(:one)
  end

  test "visiting the index" do
    visit user_extensions_url
    assert_selector "h1", text: "User extensions"
  end

  test "should create user extension" do
    visit user_extensions_url
    click_on "New user extension"

    fill_in "Available money", with: @user_extension.available_money
    fill_in "Estimated monthly expense", with: @user_extension.estimated_monthly_expense
    fill_in "Saved irpf", with: @user_extension.saved_irpf
    fill_in "User", with: @user_extension.user_id
    click_on "Create User extension"

    assert_text "User extension was successfully created"
    click_on "Back"
  end

  test "should update User extension" do
    visit user_extension_url(@user_extension)
    click_on "Edit this user extension", match: :first

    fill_in "Available money", with: @user_extension.available_money
    fill_in "Estimated monthly expense", with: @user_extension.estimated_monthly_expense
    fill_in "Saved irpf", with: @user_extension.saved_irpf
    fill_in "User", with: @user_extension.user_id
    click_on "Update User extension"

    assert_text "User extension was successfully updated"
    click_on "Back"
  end

  test "should destroy User extension" do
    visit user_extension_url(@user_extension)
    click_on "Destroy this user extension", match: :first

    assert_text "User extension was successfully destroyed"
  end
end
