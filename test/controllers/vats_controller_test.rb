require "test_helper"

class VatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vat = vats(:one)
  end

  test "should get index" do
    get vats_url
    assert_response :success
  end

  test "should get new" do
    get new_vat_url
    assert_response :success
  end

  test "should create vat" do
    assert_difference("Vat.count") do
      post vats_url, params: { vat: { declaration_collected: @vat.declaration_collected, declaration_made: @vat.declaration_made, paid_base_sum: @vat.paid_base_sum, paid_vat_sum: @vat.paid_vat_sum, quarter: @vat.quarter, received_base_sum: @vat.received_base_sum, received_vat_sum: @vat.received_vat_sum, total: @vat.total, user_id: @vat.user_id, year: @vat.year } }
    end

    assert_redirected_to vat_url(Vat.last)
  end

  test "should show vat" do
    get vat_url(@vat)
    assert_response :success
  end

  test "should get edit" do
    get edit_vat_url(@vat)
    assert_response :success
  end

  test "should update vat" do
    patch vat_url(@vat), params: { vat: { declaration_collected: @vat.declaration_collected, declaration_made: @vat.declaration_made, paid_base_sum: @vat.paid_base_sum, paid_vat_sum: @vat.paid_vat_sum, quarter: @vat.quarter, received_base_sum: @vat.received_base_sum, received_vat_sum: @vat.received_vat_sum, total: @vat.total, user_id: @vat.user_id, year: @vat.year } }
    assert_redirected_to vat_url(@vat)
  end

  test "should destroy vat" do
    assert_difference("Vat.count", -1) do
      delete vat_url(@vat)
    end

    assert_redirected_to vats_url
  end
end
