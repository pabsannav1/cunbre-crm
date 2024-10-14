require "test_helper"

class InvoicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @invoice = invoices(:one)
  end

  test "should get index" do
    get invoices_url
    assert_response :success
  end

  test "should get new" do
    get new_invoice_url
    assert_response :success
  end

  test "should create invoice" do
    assert_difference("Invoice.count") do
      post invoices_url, params: { invoice: { base_amount: @invoice.base_amount, company_id: @invoice.company_id, executed: @invoice.executed, invoice_type: @invoice.invoice_type, retention_amount: @invoice.retention_amount, retention_rate: @invoice.retention_rate, total: @invoice.total, user_id: @invoice.user_id, vat_amount: @invoice.vat_amount, vat_rate: @invoice.vat_rate } }
    end

    assert_redirected_to invoice_url(Invoice.last)
  end

  test "should show invoice" do
    get invoice_url(@invoice)
    assert_response :success
  end

  test "should get edit" do
    get edit_invoice_url(@invoice)
    assert_response :success
  end

  test "should update invoice" do
    patch invoice_url(@invoice), params: { invoice: { base_amount: @invoice.base_amount, company_id: @invoice.company_id, executed: @invoice.executed, invoice_type: @invoice.invoice_type, retention_amount: @invoice.retention_amount, retention_rate: @invoice.retention_rate, total: @invoice.total, user_id: @invoice.user_id, vat_amount: @invoice.vat_amount, vat_rate: @invoice.vat_rate } }
    assert_redirected_to invoice_url(@invoice)
  end

  test "should destroy invoice" do
    assert_difference("Invoice.count", -1) do
      delete invoice_url(@invoice)
    end

    assert_redirected_to invoices_url
  end
end
