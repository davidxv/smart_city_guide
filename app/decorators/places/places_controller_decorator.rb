PlacesController.class_eval do

  optional_belongs_to :trip

  #http://localhost:3000/places/new?place[trip_ids][]=1&place[trip_ids][]=2
  #http://localhost:3000/places/new?place[trip_ids]=1
  def new
    @place = Place.new place_params
  end


  private

  def place_params
    params.require(:place).permit(:trip_ids, :guide_ids, :route_ids, :title, :latitude, :longitude, :altitude, :heading, :tilt, :phone_number, :url, :owner_id, :relation_ids, :author_id, :user_author_id, :streetAddress, :postalCode, :locality, :region, :country)
  end

  def allowed_params
    [ :trip_ids, :guide_ids, :route_ids ]
  end

end
