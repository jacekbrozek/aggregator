require 'open-uri'
namespace :posts do
  desc "Refresh posts list"
  task :refresh => :environment do
    sources = Source.all
    sources.each do |source|
      doc = Hash.from_xml(open(source.url))
      source.import_posts(doc["rss"]["channel"]["item"])
    end
  end
end