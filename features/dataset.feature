Feature: Datasets 

  @api
  Scenario: Create a dataset with a group as an authenticated user
    Given I am logged in as a user with the "authenticated user" role
      And I am on "/node/add/group"
    Then I should see "Create Group"
    When I fill in "title" with "Test Group"
      And I press "Save"
    Then I should see "Test Group has been created"
      And I am on "/node/add/dataset"
    Then I should see "Create Dataset"
    When I fill in "title" with "Test Dataset"
      And I fill in "body[und][0][value]" with "Test description"
      And I select "cc-by" from "field_license[und][select]"
      And I select node named "test group" from "og_group_ref[und][0][default][]"
      And I press "Next: Add data"
    Then I should see "Test Dataset has been created"
    When I fill in "title" with "Test Resource"
      And I press "edit-submit"
    Then I should see "Test Resource has been created"
    
