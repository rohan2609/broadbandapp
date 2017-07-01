class CreateOfflinePayments < ActiveRecord::Migration[5.1]
  def change
    create_table :offline_payments do |t|
      t.references :plan, foreign_key: true
      t.references :customer, foreign_key: true
      t.string :cash
      t.string :check
      t.string :bank_name
      t.string :check_number
      t.string :amount_paid

      t.timestamps
    end
  end
end
