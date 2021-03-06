Feature: total downloads
         As a user 
         so that I have earned bonus or have deposited money
         I want to be able to know about my available downloads
        
     
Scenario: Calculate available downloads
       When I request "total downloads"
       Then I should see "For this month you have:"
       And I should see the available number of downloads
       
Scenario: Calculate with bonus
       Given I request <total downloads>
       And I  see a message "You have extra bonus"
       When I request <exchange bonus>
       Then I should see a message "Your downloads after exchanging bonus are:"
       And I should see the available number of downloads
