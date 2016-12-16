Feature: home page
        As a user 
        So that I organise my site in my style
        I want to be able to select at Home page either hearing to music
        and seeing "ads"

  Scenario:ads at Home page
        Given that I m at Home page
        When I press on advertisements
        Then I should be able to select "only ads with new albmus"
        And I should be able to select "No ads are displayed"
  
  Scenario: inactive user
        Given that I m at Home page
        And I am an inactive user 
        When I press on advertisements
        Then I should see "You can't make changes on advertisements"
  
  Scenario:Stop music 
        Given that I am at Home page
        When I press the stop button
        Then I should stop hearing to music
        
  Scenario : Start music
        Given that I am at Home page
        And I have stopped playing music
        When I press the start button
        Then I should start hearing to music
        
