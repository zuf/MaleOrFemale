# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'male_or_female/version'

Gem::Specification.new do |spec|
  spec.name          = 'male_or_female'
  spec.version       = MaleOrFemale::VERSION
  spec.authors       = 'Alex Shilov'
  spec.email         = 'sashapashamasha@gmail.com'
  spec.description   = 'Гем для распознования пола по имени человека, а также формального/неформального формата имени'
  spec.summary       = 'What the gender by name. Russian names supported only.'
  spec.homepage      = 'https://github.com/shlima/MaleOrFemale'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'colorize'

  spec.add_runtime_dependency 'unicode_utils'
end
