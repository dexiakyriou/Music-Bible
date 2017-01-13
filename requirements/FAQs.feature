Feature: faqs
     Frequently asked questions (FAQ).
     As a user I should be able to see a single list of questions that are answered
     from the web site designers.

  Scenario: List o Faqs
     When I press the |FAQS| hyperlink at the bottom of a page
     Then I should see a list of questions in hyperlink
     And a "search " toolbar over that List
     And I should be able to write a word or a question in that toolbar
  
  Scenario: Find my question
     Given that I have been moved at the FAQs List
     When I press a question I choose
     Then the answer from the site designer is displayed 
     And I should be able to press another question
    
  Scenario: Find answer by searching
     Given that I have been moved at the FAQs List
     When I write a question in the search bar
     Then I should be able to press |search|
     When I press |search|
     Then I should see the most similar question from the FAQs List
