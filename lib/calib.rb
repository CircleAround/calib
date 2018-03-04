require "calib/version"

if defined?(Rails)
  require 'calib/engine'
else
  require 'calib/network'
end
