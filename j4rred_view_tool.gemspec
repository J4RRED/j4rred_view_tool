require_relative 'lib/j4rred_view_tool/version'

Gem::Specification.new do |spec|
  spec.name          = "j4rred_view_tool"
  spec.version       = J4rredViewTool::VERSION
  spec.authors       = ["Jarred De Salme"]
  spec.email         = ["jarred@j4rred.com"]

  spec.summary       = %q{Testing the creation of a gem for views.  Will be very basic}
  spec.description   = %q{Providers general HTML data for Rails applications}
  spec.homepage      = "http://www.j4rred.com"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
