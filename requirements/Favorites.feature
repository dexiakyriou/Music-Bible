Feature: favorites
      As a user I have the option to add every track I want to <Favorites>.
      Next to the name of every track there is an icon (yellow star) that if is
      pressed the track is added.Moreover there is a tab <Favorites> at the top of the page
      where I can see my <favorites> organized

  Scenario: add to favorites
      Given that I see one's track details
      When I press the star button
      Then the link of the track is added to <Favorites>
      And I should see a message "The track is added to Favorites"
  
  Scenario: already added
      Given that I see one's track details
      And the track has already been added to <Favorites> 
      When I press the star button
      Then I should see a message " The track has already been added to Favorites"
      
  Scenario: show list of Favorites
      Given that at the top of any page there is a Tab <Favorites>
      When I press the Tab <Favorites>
      Then I should see Favorites List 
      And I should see a link to page where Favorites are organized
