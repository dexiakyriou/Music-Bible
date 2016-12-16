Feature: Toolbar configuration
      As a user
      So that I can find tracks and albums
      I want to be able to find everything using toolbar on top of every page of website

  Scenario: Discografy 
      When I press the tab |Albums|
      Then a list of albums in alphabetical order should be shown
      And I should be able to select any of those albums
      When I select one
      Then I should be switched to album details 
      
  Scenario: unhappy path
      When I press the tab |Albums|
      Then a list of albums in alphabetical order should be shown
      And I should be able to select any of those albums
      When I select one
      Then I should see a message " These album doesn't exist on the site database"
  
  Scenario : Singers of turkish discografy
      When I press the tab |Artist|
      Then a list of artists in alphabetical order should be shown
      And I should be able to select any of those artists
      When I select one
      Then I should be switched to artist's songs
      When I select a song
      Then I should be able to listen to it
  
  Scenario : Albums listed by year
      When I press the tab |Chronology|
      Then a list of albums in chronological order should be shown
      And I should be able to select any of those albums
      When I select one
      Then I should be switched to album's details
