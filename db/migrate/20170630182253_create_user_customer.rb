class CreateUserCustomer < ActiveRecord::Migration[5.1]
  def change
    create_table :user_customers do |t|
    
      t.references :customer, foreign_key: true
    end
  end
end
