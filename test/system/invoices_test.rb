require "application_system_test_case"

class InvoicesTest < ApplicationSystemTestCase
  setup do
    @invoice = invoices(:one)
  end

  test "visiting the index" do
    visit invoices_url
    assert_selector "h1", text: "Invoices"
  end

  test "should create invoice" do
    visit invoices_url
    click_on "New invoice"

    fill_in "Base amount", with: @invoice.base_amount
    fill_in "Company", with: @invoice.company_id
    check "Executed" if @invoice.executed
    fill_in "Invoice type", with: @invoice.invoice_type
    fill_in "Retention amount", with: @invoice.retention_amount
    fill_in "Retention rate", with: @invoice.retention_rate
    fill_in "Total", with: @invoice.total
    fill_in "User", with: @invoice.user_id
    fill_in "Vat amount", with: @invoice.vat_amount
    fill_in "Vat rate", with: @invoice.vat_rate
    click_on "Create Invoice"

    assert_text "Invoice was successfully created"
    click_on "Back"
  end

  test "should update Invoice" do
    visit invoice_url(@invoice)
    click_on "Edit this invoice", match: :first

    fill_in "Base amount", with: @invoice.base_amount
    fill_in "Company", with: @invoice.company_id
    check "Executed" if @invoice.executed
    fill_in "Invoice type", with: @invoice.invoice_type
    fill_in "Retention amount", with: @invoice.retention_amount
    fill_in "Retention rate", with: @invoice.retention_rate
    fill_in "Total", with: @invoice.total
    fill_in "User", with: @invoice.user_id
    fill_in "Vat amount", with: @invoice.vat_amount
    fill_in "Vat rate", with: @invoice.vat_rate
    click_on "Update Invoice"

    assert_text "Invoice was successfully updated"
    click_on "Back"
  end

  test "should destroy Invoice" do
    visit invoice_url(@invoice)
    click_on "Destroy this invoice", match: :first

    assert_text "Invoice was successfully destroyed"
  end
end
