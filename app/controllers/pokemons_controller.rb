class PokemonsController < ApplicationController

	def capture
		@pokemon = Pokemon.find(params[:id])
		@pokemon.trainer_id = current_trainer.id
		@pokemon.save
		redirect_to :controller => '/home', :action =>'index'
	end

	def damage
		@poke = Pokemon.find(params[:id])

		@poke.health -= 10
		@poke.save

		if @poke.health<10
			@poke.destroy
		end

		redirect_to(:back)
	end

	def new
		@pokemon = Pokemon.new #Creates an empty user object.
	end

  	def create
    	@pokemon = Pokemon.create(user_params)
    	@pokemon.health = 100
    	@pokemon.level = 1
    	@pokemon.trainer_id = current_trainer.id
    	if @pokemon.save #If saving the user was successful
    		flash[:error] = nil
      		redirect_to current_trainer #Go to the show view of the user
    	else
    		flash[:error] = @pokemon.errors.full_messages.to_sentence
      		render "new" #Go to the new view for
    	end
  	end

  	private

  	def user_params
  		params.require(:pokemon).permit(:name)
  	end
end
