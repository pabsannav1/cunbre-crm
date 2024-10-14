class Transaction < ApplicationRecord
  belongs_to :user
  belongs_to :invoice

  enum transaction_type: { incoming: "incoming", outgoing: "outgoing" }
end
