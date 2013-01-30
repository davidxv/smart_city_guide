class Trip < ActiveRecord::Base
	has_many :guides
	has_many :routes
	has_and_belongs_to_many :places
  attr_accessible :title
end
