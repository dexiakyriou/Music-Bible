Feature : Access to the users' details
        As an administrator 
        So that I have access to everything
        I want to be able to change details of users

Backround : 
           Given that I ve logged in as an administrator
           Then I should be able to access a searching tool for finding users

Scenario : Find user details
         When I request a username in  |searching| form
         Then I should see " User with username : "
         And I should see all details of that user
         And I should see on the left an option to edit everything
       
 Scenario : Unhappy Find user details
         When I request a username in  |searching| form
         Then I should see " Username : doesn't exist"
         And I should see the username I wrote
         And I should be moved to the searching tool again
         
Scenario : Delete user account
         When I 've accessed one user's details
         Then I should see on the left an option to edit everything
         When I erase all details
         Then I should see " Delete account,Are you sure ? "
         And I press "yes"
         Then I should see a message " Account",username," has been deleted"
         
Scenario : Change user_account details
         When I 've accessed one user's details
         Then I should see on the left an option to edit everything
         When I change some details
         And I press the "commit" 
         Then I should see " Changes have been confirmed"
