class AddDetailsToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :location_id, :integer
    add_column :places, :guide_id, :integer
    add_column :places, :route_id, :integer
  end
end
