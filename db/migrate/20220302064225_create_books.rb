class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :name
      t.string :author
      t.date :publication_date
      t.integer :stock
      t.integer :price
      t.string :image

      t.timestamps
    end
  end
end
