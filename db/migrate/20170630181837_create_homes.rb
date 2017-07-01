class CreateHomes < ActiveRecord::Migration[5.1]
  def change
    create_table :homes do |t|
      t.string :name
      t.string :email
      t.string :contact_no
      t.string :message

      t.timestamps
    end
  end
end
