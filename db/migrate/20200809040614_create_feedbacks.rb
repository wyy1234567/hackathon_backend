class CreateFeedbacks < ActiveRecord::Migration[6.0]
  def change
    create_table :feedbacks do |t|
      t.integer :event_id
      t.integer :location_id
      t.boolean :masks
      t.integer :crowded
      t.timestamps
    end
  end
end
