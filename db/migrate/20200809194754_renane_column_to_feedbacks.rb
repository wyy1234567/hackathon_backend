class RenaneColumnToFeedbacks < ActiveRecord::Migration[6.0]
  def change
    rename_column :feedbacks, :masks, :ee_mask
  end
end
