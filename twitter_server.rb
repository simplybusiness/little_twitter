require_relative 'client'
require_relative 'little_printer'
@little_printer = LittlePrinter.new(ENV["LITTLE_PRINTER_ID"])
@client = LittleTwitter.new.client
@since_id = nil

loop do
  options = {:result_type => "recent"}
  options.merge!(:since_id => @since_id) if @since_id

  tweets = @client.search("#SmackMyPitchUp", options).take(10)
  @since_id = tweets.first.id if tweets.first && tweets.first.id
  tweets.each do |tweet|
    payload = "From: #{tweet.user.username}<br/>Tweet: #{tweet.text}<br/>"
    payload << "<img src='#{tweet.media.first.media_uri}' class='dither' width='380'/>" if tweet.media?
    @little_printer.message(payload)
  end

  sleep 5
end
