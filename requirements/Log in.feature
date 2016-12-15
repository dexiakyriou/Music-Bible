Feature: Log in
	# POST
        # GET, PUT, DELETE
	
  Scenario: successfull log in
		When I type username and password
		Then I should see a message saying "your username and password are correct"
                And I should see Home page

  Scenario: unhappy log in
		When I type an incorrect username or password 
		Then I should see a message saying "your username or password are incorrect"
                And I should be prompted to fill log in form again
	
  Scenario: Log out
        Given I have logged in
        When I click on |Log out| button
        Then I should have the option to decide what to do
        And I select to Log out
	Then I should be moved to the |Log in form|
