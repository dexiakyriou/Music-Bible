Feature: Sign up

	# POST
        # GET, PUT, DELETE
	
  Scenario: successfull sign up
		When I give a new username and password
		Then I should see a message saying "your new username and password are confirmed"
                And I should see password and username on my screen

  Scenario: unsuccessfull sign up
		When I give a new username and password that are being used
		Then I should see a message saying "this username is being used "
                And I should be prompted to fill the sign_up form again
	
  Scenario: agree with terms
               Given that I have filled the sign_up form 
               And I have the option to check the box of agreement or disagreement with Terms
               When I check the agreement box
               Then I should see a message saying "You have successfully signed up "
    
   Scenario: disagree with terms
              Given that I have filled the sign_up form 
              And I have the option to check the box of agreement or disagreement with Terms
              When I check the disagreement box
              Then I should see a message saying "You are not permitted to sign up "  
