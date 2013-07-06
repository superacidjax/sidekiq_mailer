# -*- encoding: utf-8 -*-
require File.expand_path('../lib/sidekiq_mailer/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Anderson Dias"]
  gem.email         = ["andersondaraujo@gmail.com"]
  gem.description   = %q{Asynchronous mail delivery using sidekiq}
  gem.summary       = %q{Turning ActiveMailer deliveries asynchronous using the power of sidekiq}
  gem.homepage      = "http://github.com/andersondias/sidekiq_mailer"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "sidekiq_mailer"
  gem.require_paths = ["lib"]
  gem.version       = Sidekiq::Mailer::VERSION

  gem.add_dependency("activesupport")
  gem.add_dependency("actionmailer")
  gem.add_dependency("sidekiq")
end
