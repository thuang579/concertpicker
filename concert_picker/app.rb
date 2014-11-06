require 'sinatra'

get '/' do
	erb :home
end

get '/venues' do
	@artist = params['band_name']
	erb :venues
end

get '/area' do
	@venue = params['venue_name']
	@artist = params['band_name']
	erb :area
end

get '/order' do
	@area = params['area_name']
	@venue = params['venue_name']
	@artist = params['band_name']
	erb :order
end