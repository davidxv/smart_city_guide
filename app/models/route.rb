class Route < ActiveRecord::Base
  include SocialStream::Models::Object
  belongs_to :trip
  belongs_to :guide
  has_and_belongs_to_many :places
end
