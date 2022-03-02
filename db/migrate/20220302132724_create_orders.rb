class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.references :user, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true
      t.integer :item_number
      t.string :item_price
      t.integer :point

      t.timestamps
      t.index [:user_id, :book_id]
    end
  end
end
