require "test_helper"

class UserExtensionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_extension = user_extensions(:one)
  end

  test "should get index" do
    get user_extensions_url
    assert_response :success
  end

  test "should get new" do
    get new_user_extension_url
    assert_response :success
  end

  test "should create user_extension" do
    assert_difference("UserExtension.count") do
      post user_extensions_url, params: { user_extension: { available_money: @user_extension.available_money, estimated_monthly_expense: @user_extension.estimated_monthly_expense, saved_irpf: @user_extension.saved_irpf, user_id: @user_extension.user_id } }
    end

    assert_redirected_to user_extension_url(UserExtension.last)
  end

  test "should show user_extension" do
    get user_extension_url(@user_extension)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_extension_url(@user_extension)
    assert_response :success
  end

  test "should update user_extension" do
    patch user_extension_url(@user_extension), params: { user_extension: { available_money: @user_extension.available_money, estimated_monthly_expense: @user_extension.estimated_monthly_expense, saved_irpf: @user_extension.saved_irpf, user_id: @user_extension.user_id } }
    assert_redirected_to user_extension_url(@user_extension)
  end

  test "should destroy user_extension" do
    assert_difference("UserExtension.count", -1) do
      delete user_extension_url(@user_extension)
    end

    assert_redirected_to user_extensions_url
  end
end
