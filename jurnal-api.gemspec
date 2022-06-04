
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require File.expand_path('../lib/jurnal_api/version', __FILE__)

Gem::Specification.new do |spec|
  spec.name          = "jurnal_api"
  spec.version       = JurnalApi::VERSION
  spec.authors       = ["mekari-devs"]
  spec.email         = ["developer@mekari.com"]

  spec.summary       = %q{Ruby wrapper for the Jurnal API. This version is not official version}
  # spec.description   = %q{TODO: Write a longer description or delete this line.}
  spec.homepage      = "https://github.com/mekari-engineering/jurnal_api"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # dependency
  spec.add_dependency "faraday",                      "~> 1.0"
  spec.add_dependency "faraday_middleware",           "~> 1.0"
  spec.add_dependency "dotenv",                       "2.7.5"
end
