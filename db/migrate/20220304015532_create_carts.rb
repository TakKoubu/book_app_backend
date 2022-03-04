class CreateCarts < ActiveRecord::Migration[6.0]
  def change
    create_table :carts do |t|
      t.references :user, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true
      t.integer :item_number

      t.timestamps
      t.index [:user_id, :book_id], unique: true
    end
  end
end
