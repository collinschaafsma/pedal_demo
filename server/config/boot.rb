ENV["RACK_ENV"] ||= 'development'
ENV["PEDAL_ROOT"] ||= File.expand_path(File.dirname(File.dirname(File.dirname(__FILE__))))

require 'rubygems'
require 'bundler'

Bundler.setup
Bundler.require(:default, ENV["RACK_ENV"].to_sym)
