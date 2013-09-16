# features/search.feature
Feature: Search
  In order to see a dataset 
  As a website user
  I need to be able to search for a word

  Scenario: Searching for a dataset 
    Given I am on "/"
    When I fill in "query" with "Madison"
    And I press "edit-submit-dataset"
    Then I should see "Wisconsin Polling Places"
