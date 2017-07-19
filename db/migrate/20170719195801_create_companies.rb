class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :company_name
      t.string :full_name
      t.string :email
      t.string :phone_number
      t.boolean :partnership
      t.integer :employees
      t.boolean :contractors
      t.string :business_type
      t.string :location

      t.timestamps
    end
  end
end
