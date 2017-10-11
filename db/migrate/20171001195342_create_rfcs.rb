class CreateRfcs < ActiveRecord::Migration[5.0]
  def change
    create_table :rfcs do |t|
      t.string :name
      t.string :rfc
      t.string :address
      t.string :phone
      t.string :email
      t.string :userId
      t.string :count

      t.timestamps
    end
  end
end
