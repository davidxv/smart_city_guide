class TripsController < ApplicationController
  include SocialStream::Controllers::Objects

  def create
  params[:trip].merge!(:owner_id => current_subject.try(:actor_id), :relation_ids => Relation::Public.instance.id,
      :author_id => current_subject.try(:actor_id), :user_author_id => current_user.id)
  create!
  end

  private
  def trip_params
  params.require(:trip).permit(:title, :owner_id, :relation_ids, :author_id, :user_author_id)
  end
end
