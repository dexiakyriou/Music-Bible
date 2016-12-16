Feature: history
      As a user 
      so that I Know whatever I have spent
      I want to be able to see all of my purchases
      
  Scenario: show history
      Given that I am an active user
      When I request to see my history of purchase
      Then I should see my history file
  
  Scenario: unhappy
      Given that I am an inactive user
      When I request to see my history of purchase
      Then I should see a message " First you have to activate your account"
      
  Scenario: Print or receive email
      Given that I am an active user
      When I request to see my history of purchase
      Then I should see my history file
      And I should be able to select either to "print" the history file or "receive" email from site
