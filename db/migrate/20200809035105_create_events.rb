class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.integer :user_id
      t.integer :location_id
      t.string :status
      t.time :start
      t.integer :duration    #i'm thinking having duation in mins
      t.timestamps
    end
  end
end
