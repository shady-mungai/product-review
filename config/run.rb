# require 'bundler/setup'
# Bundler.require(:default, ENV["RACK_ENV"])
ENV["RACK_ENV"] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV["RACK_ENV"])


require_all "app/models"

review = Review.first
puts review

