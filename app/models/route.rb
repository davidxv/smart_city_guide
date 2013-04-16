class Route < ActiveRecord::Base
  include SocialStream::Models::Object
  belongs_to :trip
  belongs_to :guide
  has_and_belongs_to_many :places

  def photos
    p = Set.new
    places.each do |a|
      p << a.photos
    end
    p
  end
end
