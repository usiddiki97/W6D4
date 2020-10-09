class EditUsersTable < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :name
    remove_column :users, :email

    add_column :users, :username, :string

    add_index :users, :username, unique: true
  end
end
