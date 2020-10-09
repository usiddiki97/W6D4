class AddNull < ActiveRecord::Migration[6.0]
  def change
    change_column_default :users, :username, from: true, to: false
  end
end
