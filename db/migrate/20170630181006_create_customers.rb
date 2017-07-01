class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :fullname
      t.string :mobile_no
      t.string :alternate_no
      t.string :email
      t.string :access_token
      t.string :file
      t.string :file_file_name
      t.date :date
      t.boolean :status
      t.string :address1
      t.string :address2
      t.string :customer_number
      t.string :pincode
      t.string :plan_start_date
      t.string :plan_expiry_date
      t.references :plan
      t.references :payment
      t.timestamps
    end
  end
end
