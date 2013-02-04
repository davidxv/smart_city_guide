class PlacesRoutes < ActiveRecord::Migration
  def up
  	create_table :places_routes, :id => false do |t|
      t.references :place, :null => false
  		t.references :route, :null => false
		end

		# Adding the index can massively speed up join tables. Don't use the
		# unique if you allow duplicates.
		add_index(:places_routes, [:place_id, :route_id], :unique => true)
  end

  def down
  end
end
