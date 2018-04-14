class CreateDishes < ActiveRecord::Migration[5.1]
  def change
    create_table :dishes do |t|
      t.string :name
      t.string :display_name
      t.string :subtitle
      t.float :price
      t.string :description
      t.integer :category_id
      t.string :tags

      t.timestamps
    end
  end
end