class CreateUserExtensions < ActiveRecord::Migration[7.2]
  def change
    create_table :user_extensions do |t|
      t.references :user, null: false, foreign_key: true
      t.decimal :available_money
      t.decimal :saved_irpf
      t.decimal :estimated_monthly_expense

      t.timestamps
    end
  end
end
