# Q0: Why is this error being thrown?
	Pokemon is not yet a model.
# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
	They are all data entries in the pokemon database. The controller saves a trainerless pokemon from the database and if there is a trainer that is logged in, then the view "shows" the pokemon.
# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
	Creates a button with the text "Throw a Pokeball!" and sends a patch request to the capture path where id is the wild pokemon entry. 
# Question 3: What would you name your own Pokemon?
	Shreekachu (talent: shreaks at a ear shattering, glass breaking pitch)

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
	Did not have a path, but used (:back) because rails saves request paths and we can call it using :back.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
	Because form_to checks flash if there are any errors and displays them for you if there are any.
# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
