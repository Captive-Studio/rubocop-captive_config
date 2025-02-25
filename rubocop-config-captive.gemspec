# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)
require "rubocop/captive/version"

Gem::Specification.new do |gem|
  gem.name = "rubocop-config-captive"
  gem.version = RuboCop::Captive::VERSION
  gem.summary = "Shared rubocop configurations"
  gem.description = "Shared rubocop configuration for Captive projects"
  gem.authors = ["Captive", "Julien Polo", "Clément Prod'homme"]
  gem.email = ["julien.polo@captive.fr"]
  gem.homepage = "https://github.com/Captive-Studio/rubocop-config"
  gem.license = "MIT"
  gem.required_ruby_version = ">= 2.6"

  gem.files = Dir[
    "{config,lib}/**/*",
    "*.md",
    "*.gemspec",
    "Gemfile",
  ]

  # It is not clear what the level of support is provided by Airbnb
  # ⚠️ Instead of depending on rubocop-airbnb we copy sources
  #
  # gem.add_dependency('rubocop-airbnb', '~> 4.0.0')
  gem.add_dependency("rubocop", "~> 1.69.2")
  gem.add_dependency("rubocop-performance", "~> 1.23.0 ")
  gem.add_dependency("rubocop-rake", "~> 0.6.0")
  gem.add_dependency("rubocop-rails", "~> 2.27.0")
  gem.add_dependency("rubocop-rspec", "~> 3.3.0")
  gem.add_dependency("rubocop-capybara", "~> 2.21.0")
  gem.add_dependency("rubocop-factory_bot", "~> 2.26.1")
  gem.add_dependency("rubocop-magic_numbers", "~> 0.5.0")
  gem.add_development_dependency("rspec", "~> 3.12")
  # gem.metadata['rubygems_mfa_required'] = 'true'
end
