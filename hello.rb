require 'sinatra'

get '/' do
	@name = %w(Mabel Oscar Kittie).sample.upcase
	erb :index
end

get '/secret' do
	'This is a secret page'
end

get '/hello' do
	@visitor_first_name = params[:first_name]
	@visitor_last_name = params[:last_name]
	@name = %w(Mabel Oscar Kittie).sample.upcase
	erb :index
end