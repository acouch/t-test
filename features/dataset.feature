Feature: Datasets 

  @api
  Scenario: Create a dataset as an authenticated user
    Given I am logged in as a user with the "authenticated user" role
      And I am on "/node/add/dataset"
    Then I should see "Create Dataset"
    When I fill in "title" with "Test Dataset"
      And I fill in "body[und][0][value]" with "Test description"
      And I select "cc-by" from "field_license[und][select]"
    #And I select 2 from "og_group_ref[und][0][default][]"
      And I press "Next: Add data"
    Then I should see "Test Dataset has been created"
    When I fill in "title" with "Test Resource"
      And I press "edit-submit"
    Then I should see "Test Resource has been created"
    
