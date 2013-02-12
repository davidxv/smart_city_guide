class RoutesController < ApplicationController
  include SocialStream::Controllers::Objects
  belongs_to :trip, :optional => true
  #belongs_to :guide, :optional => true

  def new
    @route = Route.new route_params
  end

  # http://localhost:3000/routes/new?route[trip_id]=1&route[guide_id]=1
  def create
    params[:route].merge!(:owner_id => current_subject.try(:actor_id), :relation_ids => Relation::Public.instance.id,
      :author_id => current_subject.try(:actor_id), :user_author_id => current_user.id)
    #@guide = Guide.new(guide_params)
    create!
  end

  def show
    @json = @route.places.to_gmaps4rails
    show!
  end

  private
  # Using a private method to encapsulate the permissible parameters is just a good pattern
  # since you'll be able to reuse the same permit list between create and update. Also, you
  # can specialize this method with per-user checking of permissible attributes.
  def route_params
    params.require(:route).permit(:title, :owner_id, :relation_ids, :author_id, :user_author_id, :trip_id, :guide_id)
  end

  def allowed_params
    [ :trip_id, :guide_id ]
  end
end
