module Zim
  class Url
    def ext
      case @mime_type
      when 'text/html'
        'html'
      when 'image/png'
        'png'
      when 'image/jpeg'
        'jpg'
      else
        raise "Unsupported mime type: #{self.mime_type}"
      end
    end

    def filename
      "#{@url.gsub(/[^a-zA-Z0-9._\-]+/, '_')}.#{ext}"
    end
  end
end

