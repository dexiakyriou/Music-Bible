Feature: search bar
       As a user 
       So that I can find every track and album of turkish Discography
       I want to able to search for an album or track 
       by its title,singer,track name.
  
  Scenario: happy searching
       When I press on search bar
       Then I should be able to write everything there
       And I should be able to press <search>
       Then I should see a message "albums and tracks found"
       And tracks and albums titles are displayed
  
  Scenario: unhappy searching
       When I press on search bar
       Then I should be able to write everything there
       And I should be able to press <search>
       Then I should see a message "Nothing matches with that words"
  
