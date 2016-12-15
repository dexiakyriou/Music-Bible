Feature: Log in
	# POST
        # GET, PUT, DELETE
	
  Scenario: successfull log in
		When I give a new username and password
		Then I should see a message saying "your new username and password are confirmed"
                And I should see password and username on my screen

  Scenario: unhappy log in
		When I forgot a new username and password 
		Then I should see a message saying "log in again"
                And I should be prompted to fill log in form again
	
  Scenario: Log out
    Given I have logged in
    When I filled a new username and password in
    Then I should see app's contents
    And I have the option to decide what to do
