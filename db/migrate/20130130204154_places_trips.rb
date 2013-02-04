class PlacesTrips < ActiveRecord::Migration
  def up
    create_table :places_trips, :id => false do |t|
      t.references :place, :null => false
  		t.references :trip, :null => false
		end

		# Adding the index can massively speed up join tables. Don't use the
		# unique if you allow duplicates.
		add_index(:places_trips, [:place_id, :trip_id], :unique => true)
  end

  def down
  end
end
