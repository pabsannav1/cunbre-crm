class CreateCompanies < ActiveRecord::Migration[7.2]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :business_name
      t.string :tax_id
      t.string :address
      t.string :phone
      t.string :email
      t.string :company_type

      t.timestamps
    end
  end
end
