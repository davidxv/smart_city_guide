class PlanningsController < ApplicationController
  include SocialStream::Controllers::Objects
  optional_belongs_to :trip

  def new
    @planning = Planning.new planning_params
  end

  def create
    params[:planning].merge!(:owner_id => current_subject.try(:actor_id), :relation_ids => Relation::Public.instance.id,
      :author_id => current_subject.try(:actor_id), :user_author_id => current_user.id)
    create!
  end

  private
  # Using a private method to encapsulate the permissible parameters is just a good pattern
  # since you'll be able to reuse the same permit list between create and update. Also, you
  # can specialize this method with per-user checking of permissible attributes.
  def planning_params
    params.require(:planning).permit(:title, :owner_id, :relation_ids, :author_id, :user_author_id, :trip_id)
  end

  def allowed_params
    [ :trip_id ]
  end
end
