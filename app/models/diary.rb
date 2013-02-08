class Diary < ActiveRecord::Base
  include SocialStream::Models::Object
  belongs_to :trip
end
