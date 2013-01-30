class Guide < ActiveRecord::Base
  belongs_to :activity_object
  attr_accessible :title
end
