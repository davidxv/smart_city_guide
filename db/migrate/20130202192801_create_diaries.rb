class CreateDiaries < ActiveRecord::Migration
  def change
    create_table :diaries do |t|
      t.references :activity_object
      t.references :trip

      t.timestamps
    end
    add_index :diaries, :activity_object_id
    add_index :diaries, :trip_id
  end
end
