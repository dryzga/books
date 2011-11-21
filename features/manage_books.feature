Feature: Manage Books
  
  Scenario: Books List
    Given I have books titled Ogniem i mieczem, Lalka
    When I go to the list of books
    Then I should see "Ogniem i mieczem"
    And I should see "Lalka"