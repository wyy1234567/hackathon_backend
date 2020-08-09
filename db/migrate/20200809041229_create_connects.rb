class CreateConnects < ActiveRecord::Migration[6.0]
  def change
    create_table :connects do |t|
      t.integer :curr_user
      t.integer :relate_with_user
      t.string :relationship
      t.boolean :is_accepted
      t.timestamps
    end
  end
end
