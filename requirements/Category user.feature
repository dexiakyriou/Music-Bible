Feature: category of user  

Backround : Given I ve entered my account details

Scenario: show category
       When I insert account details
       Then I should be able to see my category status
       And I should be able to see one of "top user, cool user, dead user"
  
Scenario: dead user-unhappy path
       When I am a dead user
       Then I should not be able to make any payment
       And I should see a message in my account "You are inactive,You've not bought anything for one year"

Scenario:Update user category
       Given that I am a dead user
       Then I should see a message in my account " update profile "
       When I request to update profile
       Then I should be prompted to pay a "mebership fee"
       And I should see a message "You are an active member"
