class CreateCompartirs < ActiveRecord::Migration[5.0]
  def change
    create_table :compartirs do |t|
      t.string :name
      t.string :rfc
      t.string :address
      t.string :phone
      t.string :email
      t.string :token
      t.string :uid

      t.timestamps
    end
  end
end
