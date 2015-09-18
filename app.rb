require "sinatra"
require "sinatra/reloader" if development?


require 'nokogiri'
require 'open-uri'

require 'json'

=begin
ActiveRecord::Base.configurations = YAML.load_file('database.yml')
ActiveRecord::Base.establish_connection('development')

class Memos < ActiveRecord::Base
end
=end


#########################################################################################

get '/test' do
	erb :test
end

get '/home' do
    erb :home
end

get '/topic/:id' do
    erb :topic
end

get '/new' do
    erb :new
end

