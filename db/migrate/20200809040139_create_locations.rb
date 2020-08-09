class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.decimal :latitude, :precision => 15, :scale => 13
      t.decimal :longitude, :precision => 15, :scale => 13
      t.timestamps
    end
  end
end
