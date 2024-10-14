class CreateVats < ActiveRecord::Migration[7.2]
  def change
    create_table :vats do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :year
      t.integer :quarter
      t.decimal :received_base_sum
      t.decimal :received_vat_sum
      t.decimal :paid_base_sum
      t.decimal :paid_vat_sum
      t.decimal :total
      t.boolean :declaration_made
      t.boolean :declaration_collected

      t.timestamps
    end
  end
end
