Feature: Manage Books
  
  Scenario: Books List
    Given I have books titled Ogniem i mieczem, Lalka
    When I go to the list of books
    Then I should see "Ogniem i mieczem"
    And I should see "Lalka"
    
    Scenario: Add new book
        Given I have no books
        And I am on the list of books
        When I follow "Add Book"
        And I fill in "Title" with "W pustyni i w puszczy"
        And I fill in "Content" with "Bardzo ciekawa książka"
        And I press "Add"
        Then I should see "New book added."
        And I should see "W pustyni i w puszczy"
        And I should see "Bardzo ciekawa książka"
        And I should have 1 book