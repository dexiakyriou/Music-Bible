Feature: add items to kart
        As a user 
        so That I make purchases
        I want to be able to manage my kart(shopping basket)

Backround: 
        Given I've logged in

Scenario: add item
       Given I have found track after searching
       Then I should be able to see "add" button
       When I press the "add" button
       Then I can see the message " The track is added to your cart"
  
Scenario: unhappy
       Given I have found track after searching
       And I have already added the track to my cart
       Then I should be able to see "add" button
       When I press the "add" button
       Then I can see the message " The track is already added to your cart"

Scenario: show the tracks added in my cart
       When I press the "cart" icon at the top of any page
       Then I should be able to see a list of tracks added
       And I should see a list of selections for every track ( delete,buy)
       
Scenario: Buy a track
       When I press the "cart" icon at the top of any page
       Then I should be able to see a list of tracks added
       And I should see a list of selections for every track ( delete,buy)
       When I request to buy a track
       Then I should see a message "You have payed for the track"
       And I should see a message "Your money left in your account are :"

Scenario: delete a track
       When I press the "cart" icon at the top of any page
       Then I should be able to see a list of tracks added
       And I should see a list of selections for every track ( delete,buy)
       When I request to delete a track
       Then I should see a message " Delete track from list?"
       When I select "Yes"
       Then I should not be able to see the track in my list
