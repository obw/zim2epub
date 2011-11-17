# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name        = 'zim2epub'
  s.version     = '1.0.0'
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Christoph Plank']
  s.email       = ['chrisistuff@gmail.com']
  s.homepage    = 'http://rubygems.org/gems/zim2epub'
  s.summary     = %q{Convert openzim files to epub format}
  s.description = %q{Convert zim files (for example exported from wikipedia) to epub format for reading on ebook readers.}
  s.has_rdoc    = false

  s.add_dependency 'zim'
  s.add_dependency 'nokogiri'
  s.add_dependency 'eeepub'

  s.files         = `git ls-files`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']
end
