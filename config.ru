ENV['RACK_ENV'] ||= :production

Bundler.require(:default, ENV['RACK_ENV']) if defined?(Bundler)
require 'bundler/setup'

lib_path = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib_path) unless $LOAD_PATH.include?(lib_path)

require 'app'
require 'api'

run GrapeApp::App.new
