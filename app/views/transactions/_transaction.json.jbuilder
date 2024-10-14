json.extract! transaction, :id, :user_id, :invoice_id, :transaction_type, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
