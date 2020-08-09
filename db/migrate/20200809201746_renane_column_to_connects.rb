class RenaneColumnToConnects < ActiveRecord::Migration[6.0]
  def change
    rename_column :connects, :curr_user, :user_id
    rename_column :connects, :relate_with_user, :relative_id
  end
end
