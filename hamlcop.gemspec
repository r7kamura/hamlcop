# frozen_string_literal: true

require_relative 'lib/hamlcop/version'

Gem::Specification.new do |spec|
  spec.name = 'hamlcop'
  spec.version = Hamlcop::VERSION
  spec.authors = ['Ryo Nakamura']
  spec.email = ['r7kamura@gmail.com']

  spec.summary = 'RuboCop runner for Haml template.'
  spec.homepage = 'https://github.com/r7kamura/hamlcop'
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 2.6.0'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage
  spec.metadata['changelog_uri'] = "#{spec.homepage}/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
  spec.metadata['rubygems_mfa_required'] = 'true'

  spec.add_dependency 'hamli', '>= 0.2'
  spec.add_dependency 'templatecop'
end
