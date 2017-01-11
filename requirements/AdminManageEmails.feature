Feature: Manage e-mails to users
        As an administrator
        So that I have care of success in sending information e-mails
        I want be able to manage e-mails and send to users if it is necessary
       
Scenario : successfull e mail
        When I write a confirmation mail
        And I fill the user e-address
        Then I should see a message " E-mail was send successfully"
Scenario : unsuccessfull ( unhappy)
        When I write a confirmation mail
        And I fill the user e-address
        Then I should see a message " E-mail couldn't be send successfully"
        And I should see " You must correct the user's address"
