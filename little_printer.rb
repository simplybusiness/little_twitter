require 'httparty'

class LittlePrinter

  def initialize(code)
    @code = code
  end

  def message(msg)
    url = "http://remote.bergcloud.com/playground/direct_print/#{@code}"
    HTTParty.post(url, :body => {:html => "<html><head><meta charset='utf-8'></head><body><p>#{msg}</p></body></html>"})
  end
end
