json.extract! company, :id, :name, :business_name, :tax_id, :address, :phone, :email, :company_type, :created_at, :updated_at
json.url company_url(company, format: :json)
