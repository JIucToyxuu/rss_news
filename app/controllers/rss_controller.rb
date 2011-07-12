class RssController < ApplicationController
  def rss_show
    @lenta= RssReader('http://world-pulse.ru/feed')
  end
end
