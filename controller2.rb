require 'sinatra'	

get '/' do
	erb :index	
end

post '/mountain_river' do 
	if params[:mountain_river] = river
				@river = '/river'
				erb :general
			elsif 
				@mountain = '/mountain'
				erb :general
			end
end

post 'river' do 
	if params[:river] = raft
		@raft = '/raft'
		erb :general
		elsif 
			@ride_through = '/ride_through'
			erb :general
		end
end


