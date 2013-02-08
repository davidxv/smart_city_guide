class Trip < ActiveRecord::Base
	include SocialStream::Models::Object
	has_many :guides
	has_many :routes
	has_and_belongs_to_many :places
	has_many :diaries
	has_many :plannings
  # attr_accessible :title
end
