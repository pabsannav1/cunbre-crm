class Company < ApplicationRecord
  has_many :invoice

  enum company_type: { supplier: "supplier", client: "client" }
end
