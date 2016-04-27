require 'sinatra'

get '/' do
	@headline = "Welcome to the Oregon Trail"
	@question = "You come across a fork in the road..."
	@option_a = "river"
	@option_b = "mountain"
	erb :index
end

get 'direction/ :choice' do
	case params[:choice]
	when "river"
		@headline ="You reach the river"
		@question = "You can go on through or build a raft"
		@option_a = "go through"
		@option_b = "build a raft" 
		erb :index
			when "build a raft"
				@headline = "You're children drown and you're wagon capsizes."
				@question = "You can take your chances and search for food, or you can eat your last companion."
				@option_a = "Take my chances."
				@option_b = "Eat my companion."
				erb :index
					when "Take my chances."
						@headline = "You starve to death."
						@question = "Too bad. So sad." 
						erb :ending
					when "Eat my companion."
						@headline = "You ate your last companion, but it only lasted you three days."
						@question = "You died cold, alone, and a cannibal. Congrats."
						erb :ending 


	when "mountain"
		@headline = "you reach the mountain"
		@question = "You can go fast and face the bumps or go slow and steady..."
		@option_a = "FAST"
		@option_b = "SLOW"
		erb :index 
			when "FAST"
				@headline = "You went too fast"
				@question = "You were caught in an avalanche and you died, cold and alone."
				erb :ending 

			when "SLOW" || "go through"
				@headline = "You made it through, but you're low on food..."
				@question = "You come across some bison. You can..."
				@option_a = "Go around."
				@option_b = "Try to shoot for food."
				erb :index 
					when "Try to shoot for food."
						@headline = "You miss your first shot."
						@qustion= "You can shoot again or run away."
						@option_a = "Shoot again"
						@option_b = "Run away"
						erb :index 
							when "Shoot again"
								@headline = "You spooked them. They stampeded."
								@question = "You died."
								erb :ending 
					when "Run away" || "Go around."
						@headline = "You come across a small town and you have no more food, but you don't have money either. "
						@question = "The food is too expensive. You can keep going and search for cheaper food or you can steal some."
						@option_a = "Pass by without food"
						@option_b = "Steal food"
						erb :index 
							when "Steal food"
								@headline = "You are shot by other bandits trying to steal the same food."
								@question = "Sorry. Karma."
								erb :ending
							when "Pass by without food"
								@headline = "You find another town with free food and supplies."
								@question = "You make it to Oregon! Congrats. "
								@option_a = "You can stay put and build a life."
								@option_b = "You take a chance to find gold."
								erb :index 
									when "You can stay put and build a life."
										@headline = "You live the humble life of a settler."
										@question = "YAY. You survived the Oregon trail."
										erb :ending 
									when "You take a chance to find gold."
										@headline = "You struck gold!!"
										@question = "You die rich. You conquered the Oregon trail."
										erb :ending 











		#slow and safe- you are low on food but alive, you come across bison
		#fast and bumpy- you are caught in an avalanche and die 