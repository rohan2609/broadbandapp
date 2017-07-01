class CreatePayments < ActiveRecord::Migration[5.1]
  def change
    create_table :payments do |t|
      t.string :mihpayid
      t.string :txnid
      t.string :status
      t.string :unmappedstatus
      t.string :amount
      t.string :cardCategory
      t.string :email
      t.string :name_on_card
      t.string :issuing_bank
      t.string :payment_mode

      t.timestamps
    end
  end
end
