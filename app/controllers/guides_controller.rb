class GuidesController < ApplicationController
	include SocialStream::Controllers::Objects
	optional_belongs_to :trip

  def new
    @guide = Guide.new guide_params
  end

	def create
  	params[:guide].merge!(:owner_id => current_subject.try(:actor_id), :relation_ids => Relation::Public.instance.id,
  		:author_id => current_subject.try(:actor_id), :user_author_id => current_user.id)
  	#@guide = Guide.new(guide_params)
  	create!
  end

  def show
    @json = @guide.places.to_gmaps4rails
    show!
  end

	private
  # Using a private method to encapsulate the permissible parameters is just a good pattern
  # since you'll be able to reuse the same permit list between create and update. Also, you
  # can specialize this method with per-user checking of permissible attributes.
  def guide_params
    params.require(:guide).permit(:title, :owner_id, :relation_ids, :author_id, :user_author_id, :trip_id)
  end

  def allowed_params
    [ :trip_id ]
  end

end
