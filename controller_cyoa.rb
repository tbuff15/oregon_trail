require 'sinatra'

get '/' do
	@headline = "Welcome to the Oregon Trail"
	@question = "You come across a fork in the road..."
	@option_a = "river"
	@option_b = "mountain"
	erb :index
end

get '/direction/:choice' do
	case params[:choice]
	when "river"
		@headline ="You reach the river"
		@question = "You can go on through or build a raft"
		@option_a = "go through"
		@option_b = "build a raft" 
		erb :index
	when "mountain"
		@headline = "you reach the mountain"
		@question = "You can go fast and face the bumps or go slow and steady..."
		@option_a = "FAST"
		@option_b = "SLOW"
		erb :index





		#slow and safe- you are low on food but alive, you come across bison
		#fast and bumpy- you are caught in an avalanche and die 
	end
end 
