Feature: search track
       As a user 
       So that I can find every track and album of turkish Discography
       I want to be able to search for a track by its title
  
  Scenario: search track
       When I press the "advanced search" button
       Then I should be able to see some search options
       When I select search track by title
       Then I sould be prompted to write the track title
       And the track details are displayed
  
  Scenario: unsuccessfull searching
       When I press the "advanced search" button
       Then I should be able to see some search options
       When I select search track by title
       Then I sould be prompted to write the track title
       And I should a message "track not found"
       
  Scenario: Listen to music track I found
       Given that I have successfully found a track
       Then I should have the track details displayed
       And I should see the |play| button
       When I press play
       Then the track should start playing in site quality
       
  Scenario: Track file does not exist
       Given that I have successfully found a track
       Then I should have the track details displayed
       And I should see the |play| button
       When I press play
       Then I should see a message " Track file has been removed by administrator"

