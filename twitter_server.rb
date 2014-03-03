require_relative 'client'
require_relative 'little_printer'
little_printer = LittlePrinter.new(ENV["LITTLE_PRINTER_ID"])
client = LittleTwitter.new.client
last_msg = ""
loop do
  sleep 10
  client.search("", :result_type => "recent", :geocode => "51.520767,-0.08737,1km").take(1).each do |tweet|
    if last_msg != tweet.text
      last_msg = tweet.text
      payload = "Last tweet in a 1km radius of the office<br/>From: #{tweet.user.username}<br/>Tweet: #{tweet.text}"
      little_printer.message(payload)
    end
  end
end
