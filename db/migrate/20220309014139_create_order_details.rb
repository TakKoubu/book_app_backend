class CreateOrderDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :order_details do |t|
      t.references :order, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true
      t.integer :item_number
      t.string :item_price
      t.integer :point
      
      t.timestamps
      t.index [:order_id, :book_id], unique: true
    end
  end
end
