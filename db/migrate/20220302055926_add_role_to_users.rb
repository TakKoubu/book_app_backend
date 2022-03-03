class AddRoleToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :role, :string, null: false, default: 'general'
    add_column :users, :point, :integer, null: false, default: 0
  end
end
