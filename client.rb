require 'twitter'
class LittleTwitter
  attr_reader :client
  def initialize
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
      config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
    end
  end
end
