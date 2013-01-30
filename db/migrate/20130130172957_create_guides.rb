class CreateGuides < ActiveRecord::Migration
  def change
    create_table :guides do |t|
      t.references :activity_object
      t.references :location
      t.string :title

      t.timestamps
    end
    add_index :guides, :activity_object_id
  end
end
