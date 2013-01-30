class TripsPlaces < ActiveRecord::Migration
  def up
    create_table :trips_places, :id => false do |t|
  		t.references :trip, :null => false
  		t.references :place, :null => false
		end

		# Adding the index can massively speed up join tables. Don't use the
		# unique if you allow duplicates.
		add_index(:trips_places, [:trip_id, :place_id], :unique => true)
  end

  def down
  end
end
