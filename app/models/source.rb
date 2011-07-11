class Source < ActiveRecord::Base
  has_many :posts
  
  validates_uniqueness_of :url, :name
  validates_format_of :url, :with => URI::regexp(%w( http https ))
  validates_presence_of :url, :name
  
  attr_accessible :url, :name

  def import_posts(items)
    items.each do |item|
      post = self.posts.create :title => item["title"], :link => item["link"], :description => item["description"], :enclosure => item["enclosure"]
      self.posts << post if post.save
    end
  end
end
