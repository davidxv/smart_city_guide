class CreateDiaries < ActiveRecord::Migration
  def change
    create_table :diaries do |t|
      t.references :activity_object

      t.timestamps
    end
    add_index :diaries, :activity_object_id
  end
end
