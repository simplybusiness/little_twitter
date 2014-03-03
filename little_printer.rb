class LittlePrinter
  def initialize(code)
    @code = code
  end

  def message(msg)
    `curl -X POST -d "html=<html><head><meta charset='utf-8'></head><body><p>#{msg}</p></body></html>" http://remote.bergcloud.com/playground/direct_print/#{@code}`
  end
end
