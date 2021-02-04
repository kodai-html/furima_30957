class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|

      t.timestamps
      t.string :name
      t.string :explain
      t.integer :category_id
      t.integer :state_id
      t.integer :burden_id
      t.integer :area_id
      t.integer :date_id
      t.integer :price
      t.integer :fee 
      t.integer :profit
    end
  end
end
