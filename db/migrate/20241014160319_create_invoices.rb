class CreateInvoices < ActiveRecord::Migration[7.2]
  def change
    create_table :invoices do |t|
      t.references :user, null: false, foreign_key: true
      t.references :company, null: false, foreign_key: true
      t.string :invoice_type
      t.decimal :base_amount
      t.decimal :vat_rate
      t.decimal :vat_amount
      t.decimal :retention_rate
      t.decimal :retention_amount
      t.decimal :total
      t.boolean :executed

      t.timestamps
    end
  end
end
