class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
    	t.references :activity_object

      t.timestamps
    end
    add_index :trips, :activity_object_id
  end
end
