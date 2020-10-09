class RemoveDefaultValue < ActiveRecord::Migration[6.0]
  def change
    change_column_default :users, :username, nil
  end
end
