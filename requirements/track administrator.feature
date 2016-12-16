Feature: edit_records_with_track as administrator
         As an administrator
	 So that I can change the database of the website
	 I want be able to add and delete tracks from the database

Background: Given I am logged in as administrator
            And I have entered the |tracks database|

Scenario: remove track from site
          When I delete a track
          Then I should see the message "The track has been deleted"

Scenario: add track to site
          When I add a new track with a name
          And I specify it's description
	  And I specify it's category
	  Then I should see the created track on the database

Scenario: database disactivated 
	 Given that the database is disactivated
	 When I request to add, delete or update a track
	 Then I should see a message "You cannot continue with this function,database is disactivated"
