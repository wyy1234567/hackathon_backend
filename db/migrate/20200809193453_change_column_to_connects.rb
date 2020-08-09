class ChangeColumnToConnects < ActiveRecord::Migration[6.0]
  def change
    change_column :connects, :is_accepted, :boolean, :default => false
  end
end
