class Invoice < ApplicationRecord
  belongs_to :user
  belongs_to :company
  has_one :transaction

  enum invoice_type: { income: "income", expense: "expense" }
end
