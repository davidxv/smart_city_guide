class Diary < ActiveRecord::Base
  include SocialStream::Models::Object
  # attr_accessible :title, :body
end
