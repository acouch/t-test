Feature: Datasets 

  @api @javascript
  Scenario: Manage Groups 
    Given I am logged in as a user with the "editor" role
      And I am on "/group/data-explorer-examples"
    When I click "Group" in the "toolbar" region
    Then I should see "Add group members."
    When I click "Add people"
    Then I should see "ADD A GROUP MEMBER TO DATA EXPLORER EXAMPLES"
    When I fill in "name" with "admin"
      And I wait for "1" seconds
      And I press "edit-submit"
    Then I should see "admin has been added to the group Data Explorer Examples."
    When I am on "/group/data-explorer-examples"
    Then I should see "Members"
    When I click "Members"
    Then I should see "admin"
    When I click "Group" in the "toolbar" region
      And I wait for "1" seconds
      And I click "People"
    Then I should see "admin"
    When I check "edit-views-bulk-operations-0"
      And I select "action::og_membership_delete_action" from "edit-operation"
      And I press "edit-submit--2"
    Then I should see "Are you sure you want to perform Remove from group on the selected items?"
    When I press "edit-submit"
      And I wait for "1" seconds
    Then I should see "Performed Remove from group"

  @api @javascript
  Scenario: Edit any group content 
    Given I am logged in as a user with the "editor" role
      And I am on "/group/data-explorer-examples"
    Then I should see "US National Foreclosure Statistics January 2012"
      And I should see "Data Explorer Examples"
      And I should see "Filter by tags"
    When I click "Edit"
    Then I should see "Edit Group Data Explorer Examples"

  @api @javascript
  Scenario: Edit any page content 
    Given I am logged in as a user with the "editor" role
      And I am on "/about"
    Then I should see "DKAN is the Drupal-based version of CKAN"
    When I click "Edit"
    Then I should see "Edit Page About"

  @api @javascript
  Scenario: Edit any dataset content 
    Given I am logged in as a user with the "editor" role
      And I am on "/dataset/us-national-foreclosure-statistics-january-2012"
    Then I should see "Add Resource"
    When I click "Edit"
    Then I should see "What are datasets?"
