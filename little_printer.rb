require 'httparty'
require 'erb'
require_relative 'renderer'

class LittlePrinter

  def initialize(code)
    @code = code
  end

  def message(msg)
    renderer = Renderer.new(msg)
    url = "http://remote.bergcloud.com/playground/direct_print/#{@code}"

    HTTParty.post(url, :body => {:html => renderer.render})
  end
end
