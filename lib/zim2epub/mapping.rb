class Mapping
  def initialize
    @hash = Hash.new
  end

  def <<(url)
    @hash[url.to_s] = url.filename
  end

  def [](idx)
    uidx = CGI::unescape(idx)
    if @hash.has_key?(uidx)
      @hash[uidx]
    else
      m = /^(.*)#(.*)$/.match(uidx)
      if m.nil?
        idx
      else
        "#{@hash[m.captures[0]]}##{m.captures[1]}"
      end
    end
  end
end

