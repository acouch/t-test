# features/search.feature
Feature: Search
  In order to see a dataset 
  As a website user
  I need to be able to search for a word

  Scenario: Searching for a dataset 
    Given I am on "/"
    When I fill in "query" with "Madison" in the "header" region
    And I press "edit-submit-dataset"
    Then I should see "Wisconsin Polling Places"

 @api
  Scenario: Tagged scenario uses Drush driver and succeeds            
    Given I am logged in as a user with the "authenticated user" role 
    When I click "My account"                                         
    Then I should see the heading "History"                           

