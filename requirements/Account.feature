Feature: user_account
        As a user 
	that I can access my profile details
	I want to be able to change or delete them

	
  Backround: 
           Given that I've logged in
  
  Scenario: update details
         When I insert account editor
         And change details
	 Then I should be prompted to press <save changes>
         And I should see a message "successfull saving"

  Scenario: unsuccessfull updating of details
	 When I insert account editor
         And change details
         And write some e-mail or Bank details that aren't valid 
	 Then I should be prompted to press <save changes>
         And I should see a message "changes couldn't be saved"
         And I should be moved to the details editor again
	
  Scenario: show details
         When I request to view details
         Then I should see all details of my profile
         And I should have the option to change details
    
   Scenario: delete account
         Given that I have inserted account settings
         When I request to delete the account
         Then I should see a message "Your account will be deleted.Are you sure?"
         And I have the option to puss "Yes" or "NO"
         And I choose "Yes"
         Then I should see a message " Your account doesn't exist"
