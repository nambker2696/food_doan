class CreateCartItems < ActiveRecord::Migration[5.1]
  def change
    create_table :cart_items do |t|
      t.integer :dish_id
      t.integer :cart_id
      t.decimal :price
      t.integer :quantity,   default: 1

      t.timestamps
    end
  end
end
