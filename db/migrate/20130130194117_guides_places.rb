class GuidesPlaces < ActiveRecord::Migration
  def up
  	create_table :guides_places, :id => false do |t|
  		t.references :guide, :null => false
  		t.references :place, :null => false
		end

		# Adding the index can massively speed up join tables. Don't use the
		# unique if you allow duplicates.
		add_index(:guides_places, [:guide_id, :place_id], :unique => true)
  end

  def down
  end
end
