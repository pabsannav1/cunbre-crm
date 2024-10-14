json.extract! invoice, :id, :user_id, :company_id, :invoice_type, :base_amount, :vat_rate, :vat_amount, :retention_rate, :retention_amount, :total, :executed, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
