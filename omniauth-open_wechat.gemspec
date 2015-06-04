# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-open_wechat/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["free1"]
  gem.email         = ["747549945@qq.com"]
  gem.description   = %q{OmniAuth strategy for OpenWechat.}
  gem.summary       = %q{OmniAuth strategy for OpenWechat.}
  gem.homepage      = "https://github.com/free1/omniauth-open_wechat"
  gem.license       = "MIT"

  # gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.name          = "omniauth-open_wechat"
  gem.require_paths = ["lib"]
  gem.version       = OmniAuth::OpenWechat::VERSION

  gem.add_dependency 'omniauth', '~> 1.0'
  gem.add_dependency 'omniauth-oauth2', '>= 1.1.1', '< 2.0'
  # gem.add_development_dependency 'rspec', '~> 2.7'
  # gem.add_development_dependency 'rack-test'
  # gem.add_development_dependency 'simplecov'
  # gem.add_development_dependency 'webmock'
end
