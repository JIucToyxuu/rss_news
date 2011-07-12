class RssReader < ActiveRecord::Base
    def
    read_rss(rss_link)
      require 'simple-rss'
      require 'open-uri'
      feed_items = SimpleRSS.parse(open(rss_link)).items
	#@lenta = feed_items
	#@lenta.echo do |item|

# <% @lenta.each do |item| -%>
 # <%= h item.title %>
 # < %= h item.description %>
# < %= h item.author %>
 # < %= link_to('Date:',item.pubdate %>
 #< %= link_to('Url:',item.link) %>
# <% end -%>
@newss = News.new(:title=>"title", :link=>"link", :decription=>"content")
newss.save
    end
  end 
end
