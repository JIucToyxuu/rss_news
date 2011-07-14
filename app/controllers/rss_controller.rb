class RssController < ApplicationController
   def
    read_rss
      require 'simple-rss'
      require 'open-uri'
      feed_items = SimpleRSS.parse(open('http://world-pulse.ru/feed')).items
	#@lenta = feed_items
	#@lenta.echo do |item|

# <% @lenta.each do |item| -%>
 # <%= h item.title %>
 # < %= h item.description %>
# < %= h item.author %>
 # < %= link_to('Date:',item.pubdate %>
 #< %= link_to('Url:',item.link) %>
 #<% end -%>
newss = {}
feed_items.echo do |item|
@name = Faker::Name.first_name
 newss[@name] = News.new
newss[@name][:title] = item.title
newss[@name][:link] = item.link
newss[@name][:description] = item.description
 newss[@name].save

    end
  end 
end
