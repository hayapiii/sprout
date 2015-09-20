require "sinatra"
require "sinatra/reloader" if development?


require 'nokogiri'
require 'open-uri'

require 'json'

ActiveRecord::Base.configurations = YAML.load_file('database.yml')
ActiveRecord::Base.establish_connection('development')

class Topic < ActiveRecord::Base
end


#########################################################################################

get '/test' do
	erb :test
end

get '/home' do
		@topics = Topic.all
    erb :home
end

get '/topic/:id' do
    erb :topic
end

get '/new' do
    erb :new
end

