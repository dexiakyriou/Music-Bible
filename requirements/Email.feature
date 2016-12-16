Feature: email    

Scenario: e-mail confirmation
       When I make a successfull sign up
       Then I should receive a confirmation e-mail within five minutes
  
Scenario: e-mail payment
       When I buy a track
       Then I should receive an e-mail with the unique <id> of payment

Scenario: e-mail new albums
       When new albumσ is added on the albums database
       Then I should receive e-mail with newsletters 
