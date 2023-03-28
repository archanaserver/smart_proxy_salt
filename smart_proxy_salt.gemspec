# frozen_string_literal: true

require File.expand_path('../lib/smart_proxy_salt/version', __FILE__)

Gem::Specification.new do |s|
  s.name             = 'smart_proxy_salt'
  s.version          = Proxy::Salt::VERSION

  s.summary          = "SaltStack Plug-In for Foreman's Smart Proxy"
  s.description      = "SaltStack Plug-In for Foreman's Smart Proxy"
  s.authors          = ['Michael Moll', 'Stephen Benjamin']
  s.email            = 'foreman-dev@googlegroups.com'
  s.extra_rdoc_files = ['README.md', 'LICENSE']
  s.files            = Dir['{bin,etc,lib/smart_proxy_salt,salt,sbin,settings.d,bundler.d}/**/*'] + ['lib/smart_proxy_salt.rb'] + s.extra_rdoc_files
  s.executables      = s.files.grep(%r{^bin/}) { |file| File.basename(file) }
  s.homepage         = 'https://github.com/theforeman/smart_proxy_salt'
  s.license          = 'GPL-3.0'
  s.add_development_dependency('test-unit', '~> 3')
  s.add_development_dependency('mocha', '~> 1')
  s.add_development_dependency('webmock', '~> 1')
  s.add_development_dependency('rake', '~> 13')
  s.add_development_dependency('rubocop', '1.28.0')
  s.add_development_dependency('rack-test', '~> 0')

  s.add_runtime_dependency('smart_proxy_dynflow', '>= 0.5.0')
end
