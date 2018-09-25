Gem::Specification.new do |gem|
  gem.name    = 'javascriptcore-gtk'
  gem.version = '1.0.0'
  gem.date    = Date.today.to_s

  gem.summary = "Ruby bindings to JavaScriptCoreGtk (ffi)"
  gem.description = "access javascript in gtk applications"

  gem.authors  = ['ppibburr']
  gem.email    = 'tulnor33@gmail.com'
  gem.homepage = 'http://github.com/ppibburr/javascriptcore-gtk'

  gem.add_dependency('rake')
  gem.add_dependency('webkit2-gtk')
  
  # ensure the gem is built out of versioned files
  gem.files = (Dir['Rakefile', '{bin,lib,man,test,spec, ext}/**/*', 'README*', 'LICENSE*'])# & `git ls-files -z`.split("\0")).push(*Dir.glob("./ext/*.so"))
  
  gem.require_paths = ["lib"]
end
