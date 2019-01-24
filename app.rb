require 'bundler'
Bundler.require
$:.unshift File.expand_path('./../lib', __FILE__)
# changer le nom du prog et garder le require :
require  'application.rb'
Application.new.perform
