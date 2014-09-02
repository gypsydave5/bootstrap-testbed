require 'sinatra'

get '/' do
	@name = %w(Mabel Oscar Kittie).sample.upcase
	erb :index
end

get '/secret' do
	'This is a secret page'
end

get '/hello' do
	@visitor = (params[:first_name] + " " + params[:last_name]).upcase
	@name = %w(Mabel Oscar Kittie).sample.upcase
	erb :index
end