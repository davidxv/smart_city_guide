class Guide < ActiveRecord::Base
  include SocialStream::Models::Object
  belongs_to :trip
  has_many :routes
  has_and_belongs_to_many :places
  attr_accessible :title
end
