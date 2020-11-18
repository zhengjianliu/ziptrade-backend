class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.integer :ownerId
      t.text :images, array: true, default: []
      t.string :price
      t.string :description
      t.string :condition
      t.string :available, default: true
      t.string :visiable, default: true
      t.timestamps
    end
  end
end
