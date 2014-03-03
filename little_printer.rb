require 'httparty'

class LittlePrinter

  def initialize(code)
    @code = code
  end

  def message(msg)
    url = "http://remote.bergcloud.com/playground/direct_print/#{@code}"
    HTTParty.post(url, :body => {:html => "<html><head><meta charset='utf-8'></head><body><p>#{msg}</p></body></html>"})
    puts "Sent message: #{msg}"
    #`curl -X POST -d "html=<html><head><meta charset='utf-8'></head><body><p>#{msg}</p></body></html>" http://remote.bergcloud.com/playground/direct_print/#{@code}`
  end
end
