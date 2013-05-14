class Planning < ActiveRecord::Base
  include SocialStream::Models::Object

  validates :title, :presence => true, :length => { :maximum => 50 }
  validates :duration, :presence => true, :numericality => true, :inclusion => { :in => 1..90 }

  def content
    content = JSON.parse(days)
  end

end
