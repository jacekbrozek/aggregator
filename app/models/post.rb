class Post < ActiveRecord::Base
  belongs_to :source
  
  validates_uniqueness_of :title, :link
  attr_accessible :title, :link, :description, :enclosure
  
  def to_s
    title
  end
end
