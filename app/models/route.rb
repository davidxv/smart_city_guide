class Route < ActiveRecord::Base
  belongs_to :activity_object
  belongs_to :location
  belongs_to :guide
  attr_accessible :title
end
