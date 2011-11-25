# -*- encoding: utf-8 -*-

require File.expand_path('../lib/jazz_hands/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = 'jazz_hands'
  gem.version       = JazzHands::VERSION
  gem.authors       = ['Gopal Patel']
  gem.email         = ['nixme@stillhope.com']
  gem.summary       = 'Exercise those fingers. Pry-based enhancements for the default Rails console.'
  gem.homepage      = 'https://github.com/nixme/jazz_hands'
  gem.description   = "Spending hours in the rails console? Spruce it up and show off those hard-working hands! jazz_hands replaces IRB with Pry, improves output through awesome_print and has some other goodies up its sleeves."

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.require_paths = ['lib']

  # Dependencies
  gem.required_ruby_version = '>= 1.9.2'
  gem.add_runtime_dependency 'pry', ['~> 0.9.7.4']
  gem.add_runtime_dependency 'pry-doc', ['~> 0.3.0']
  gem.add_runtime_dependency 'pry-git', ['~> 0.2.2']
  gem.add_runtime_dependency 'pry-remote', ['>= 0.1.0']
  gem.add_runtime_dependency 'coolline', ['>= 0.1.0']
  gem.add_runtime_dependency 'coderay', ['>= 0.9.8']
  gem.add_runtime_dependency 'awesome_print', ['~> 0.4.0']
end