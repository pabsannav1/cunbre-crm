json.extract! vat, :id, :user_id, :year, :quarter, :received_base_sum, :received_vat_sum, :paid_base_sum, :paid_vat_sum, :total, :declaration_made, :declaration_collected, :created_at, :updated_at
json.url vat_url(vat, format: :json)
