Feature: payment
      As a user
      So that I enjoy music
      I want to able to buy and download music on my pc

  Scenario: successful payment
         When I request to buy a track
         Then I should be prompted to confirm payment
         And I should see a message "Successfull payment"
  
  Scenario: unsuccessful payment
        When I request to buy a track
        Then I should be prompted to confirm payment
        Then I should a message "Not enough money in your wallet"
        
  Scenario: generation of payment id
        When I make a successfull payment 
        Then I should see a message " Your unique payment id : "
        And I should my unique id
