require "application_system_test_case"

class VatsTest < ApplicationSystemTestCase
  setup do
    @vat = vats(:one)
  end

  test "visiting the index" do
    visit vats_url
    assert_selector "h1", text: "Vats"
  end

  test "should create vat" do
    visit vats_url
    click_on "New vat"

    check "Declaration collected" if @vat.declaration_collected
    check "Declaration made" if @vat.declaration_made
    fill_in "Paid base sum", with: @vat.paid_base_sum
    fill_in "Paid vat sum", with: @vat.paid_vat_sum
    fill_in "Quarter", with: @vat.quarter
    fill_in "Received base sum", with: @vat.received_base_sum
    fill_in "Received vat sum", with: @vat.received_vat_sum
    fill_in "Total", with: @vat.total
    fill_in "User", with: @vat.user_id
    fill_in "Year", with: @vat.year
    click_on "Create Vat"

    assert_text "Vat was successfully created"
    click_on "Back"
  end

  test "should update Vat" do
    visit vat_url(@vat)
    click_on "Edit this vat", match: :first

    check "Declaration collected" if @vat.declaration_collected
    check "Declaration made" if @vat.declaration_made
    fill_in "Paid base sum", with: @vat.paid_base_sum
    fill_in "Paid vat sum", with: @vat.paid_vat_sum
    fill_in "Quarter", with: @vat.quarter
    fill_in "Received base sum", with: @vat.received_base_sum
    fill_in "Received vat sum", with: @vat.received_vat_sum
    fill_in "Total", with: @vat.total
    fill_in "User", with: @vat.user_id
    fill_in "Year", with: @vat.year
    click_on "Update Vat"

    assert_text "Vat was successfully updated"
    click_on "Back"
  end

  test "should destroy Vat" do
    visit vat_url(@vat)
    click_on "Destroy this vat", match: :first

    assert_text "Vat was successfully destroyed"
  end
end
