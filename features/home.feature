Feature: Homepage
  In order to know the website is running
  As a website user
  I need to be able to view the site title and login

  Scenario: Viewing the site title
    Given I am on the homepage
    Then I should see "Welcome to the DKAN Demo"

  Scenario: Viewing default content
    Given I am on the homepage
    Then I should see "Wisconsin Polling Places"

  Scenario: Viewing top menu
    Given I am on the homepage
    Then I should see "Datasets"
    Then I should see "Groups"
    Then I should see "About"

  Scenario: Viewing footer
    Given I am on the homepage
    Then I should see "powered by DKAN, a project of Nuams"

  Scenario: Viewing tags
    Given I am on the homepage
    When I click "politics"
    Then I should see "Afghanistan Election Districts"

  @api
  Scenario: See "Add Dataset"
    Given I am logged in as a user with the "authenticated user" role
    And I am on the homepage
    Then I should see "Add Dataset"

  @api
  Scenario: See "Dataset Form"
    Given I am logged in as a user with the "authenticated user" role
    And I am on the homepage
    And I click "Add Dataset"
    Then I should see "Create Dataset"

  @javascript
  Scenario: Test header region
    Given I am on the homepage
    Then I should see "Welcome"
    And I should see "Login" in the "header" region

  @api
  Scenario: Logging into the site
    Given I am logged in as a user with the "authenticated user" role
    And I am on the homepage
    Then I should see "Logout"