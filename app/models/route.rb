class Route < ActiveRecord::Base
  include SocialStream::Models::Object
  belongs_to :trip
  belongs_to :guide
  has_and_belongs_to_many :places

  def photos
    p = Array.new
    places.each do |a|
      a.photos.each do |b|
        p << b
      end
    end
    p
  end
end
