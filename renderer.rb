class Renderer
  attr_reader :message

  def initialize message
    @template = File.read(File.dirname(__FILE__)+"/template.html.erb")
    @message = message
  end

  def render
    ERB.new(@template).result binding
  end
end
