Feature: language options
        As a user
        I want be able to select the language in which
        the website is beeing diplayed
        
  Scenario: happy option
        When I press the country flag on top of the page
        Then I should be able to see a list of flags of some countries 
        And I should be able to select one
        When I select a flag 
        Then the website should be displayed in that language version I had selected
        
  
  Scenario: unhappy option
       When I select a flag
       Then nothing should change on the website
       And I should see a message " This version isn't available yet" 
