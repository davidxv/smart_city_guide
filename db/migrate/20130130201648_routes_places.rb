class RoutesPlaces < ActiveRecord::Migration
  def up
  	create_table :routes_places, :id => false do |t|
  		t.references :route, :null => false
  		t.references :place, :null => false
		end

		# Adding the index can massively speed up join tables. Don't use the
		# unique if you allow duplicates.
		add_index(:routes_places, [:route_id, :place_id], :unique => true)
  end

  def down
  end
end
