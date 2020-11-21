class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.integer :ownerId
      t.text :images, array: true, default: []
      t.string :name
      t.string :category
      t.string :price
      t.string :description
      t.string :condition
      t.boolean :available, default: true
      t.boolean :visiable, default: true
      t.timestamps
    end
  end
end
