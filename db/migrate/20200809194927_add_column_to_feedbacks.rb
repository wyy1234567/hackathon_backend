class AddColumnToFeedbacks < ActiveRecord::Migration[6.0]
  def change
    add_column :feedbacks, :co_mask, :boolean
  end
end
