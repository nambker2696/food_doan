class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.string :name
      t.integer :user_id
      t.string :address
      t.string :phone
      t.string :open_time
      t.text :description
      t.string :radius
      t.boolean :status
      t.integer :sum_rate
      t.float :rate_avg
      
      t.timestamps
    end
  end
end
