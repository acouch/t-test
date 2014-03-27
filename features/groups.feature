Feature: Groups 
  In order to know the groups are working 
  As a website user
  I need to be able to view the group pages

  @api @javascript
  Scenario: View Groups 
    Given I am on "/group/geospatial-data-explorer-examples"
      Then I should see "Wisconsin Polling Places"
      And I should see "Afghanistan Election Districts"
    When I click "country-afghanistan (1)"
      Then I should see "Afghanistan Election Districts"
      And I should not see "Wisconsin Polling Places"
    When I click "country-afghanistan"
      Then I should see "Wisconsin Polling Places"
      And I should see "Afghanistan Election Districts"
