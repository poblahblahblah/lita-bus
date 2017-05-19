require "simplecov"
require "coveralls"
SimpleCov.start { add_filter "/spec/" }

require "lita-bus"
require "lita/rspec"
Lita.version_3_compatibility_mode = false
