# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'uc_student_number_validator/version'

Gem::Specification.new do |spec|
  spec.name          = "uc_student_number_validator"
  spec.version       = UcStudentNumberValidator::VERSION
  spec.authors       = ["Pedro Pablo Aste Kompen"]
  spec.email         = ["wachunei@gmail.com"]

  spec.summary       = "uc_student_number validation for ActiveModel"
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "uc_student_number", "~>0.0"
  spec.add_runtime_dependency "activemodel", ">=0"

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
