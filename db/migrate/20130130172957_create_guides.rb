class CreateGuides < ActiveRecord::Migration
  def change
    create_table :guides do |t|
      t.references :activity_object
      t.references :trip
      t.string :title

      t.timestamps
    end
    add_index :guides, :activity_object_id
    add_index :guides, :trip_id
  end
end
