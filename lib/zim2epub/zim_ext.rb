module Zim
  class Url
    def ext
      url = final_url
      case url.mime_type
      when 'text/plain'
        'txt'
      when 'text/html'
        'html'
      when 'image/png'
        'png'
      when 'image/jpeg'
        'jpg'
      when 'image/gif'
        'gif'
      when 'application/javascript'
        'js'
      when 'text/css'
        'css'
      else
        raise "Unsupported mime type: #{url.mime_type}"
      end
    end

    def filename
      "#{@url.gsub(/[^a-zA-Z0-9._\-]+/, '_')}.#{ext}"
    end
  end
end

