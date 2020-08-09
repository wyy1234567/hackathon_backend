class ChangeColumnToUsers < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :name, :full_name
  end
end
