Feature: Post on sites
      As a user
      So that I can earn bonus credits
      I want to able to share a track on Facebook or Google
      
  Scenario:Share on Facebook
      When I request to share a track on Facebook
      Then I should be prompted to sign in "Facebook"
      And I should see message "The track is beeing posted on your wall"
      And I should see the bonus credits I have earned
  Scenario: unhappy Facebook
      When I request to share a track on Facebook
      Then I should be prompted to sign in "Facebook"
      And I should see message "You have already shared it on Facebook"
      And I should see a message "No bonus credits for you"
      
  Scenario:Publish on Google
      When I request to make a public proposal of a track on Google
      Then I should be prompted to sign in "Google"
      And I should see message "The track is beeing publιshed on your wall"
      And I should see the bonus credits I have earned
  Scenario: unhappy Google
      When I request to make a public proposal of a track on Google
      Then I should be prompted to sign in "Google"
      And I should see message "The track has already been published"
      And I should see a message "No bonus credits for you"
