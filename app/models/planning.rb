class Planning < ActiveRecord::Base
  include SocialStream::Models::Object
  belongs_to :trip
end
