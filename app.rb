require 'require_all'
require 'sequel'
require 'sinatra'
require 'sinatra/contrib'

RACK_ENV = ENV['RACK_ENV'] ||= 'development' unless defined?(RACK_ENV)
DB = case RACK_ENV
     when 'development' then Sequel.connect('sqlite://db/development.db')
     when 'production'  then Sequel.connect('sqlite://db/production.db')
     when 'test'        then Sequel.connect('sqlite://db/test.db')
     end

require_all 'controllers', 'models'
