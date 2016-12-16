Feature: search album
       As a user 
       So that I can find every track and album of turkish Discography
       I want to able to search for an album by its title

  Scenario: happpy searching
       When I press the "advanced search" button
       Then I should be able to see some search options
       When I select search album by title
       Then I sould be prompted to write the albums title
       And the album page is displayed
  
  Scenario: unhappy searching
       When I press the "advanced search" button
       Then I should be able to see some search options
       When I select search album by title
       Then I sould be prompted to write the albums title
       And I should a message "album not found"
  Scenario : show album covers
       Given that I have found the album via site searching
       And the album page is displayed
       And I should see the front cover of it
       When I press on front cover
       Then I should see both covers and details of album
  Scenario : Print album covers
       Given that I have found the album via site searching
       And the album page is displayed
       When I press |print covers|
       Then I should be able to give printing details according to my model printer
       And my printer should print the covers
       
       
      
