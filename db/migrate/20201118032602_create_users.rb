class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :fullname
      t.string :password_digest
      t.string :address
      t.string :zipcode
      t.string :city
      t.string :phone
      t.boolean :displayphone, default: true
      t.string :email

      t.timestamps
    end
  end
end
