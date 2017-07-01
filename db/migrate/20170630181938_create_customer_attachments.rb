class CreateCustomerAttachments < ActiveRecord::Migration[5.1]
  def change
    create_table :customer_attachments do |t|
      t.string :file
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end
