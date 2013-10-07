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

  @javascript
  Scenario: Test header region 
    Given I am on the homepage
    Then I should see "Welcome"
    And I should see "Login" in the "header" region

  @api
  Scenario: Logging into the site
    Given I am logged in as a user with the "authenticated user" role
    #Given I am logged in as "admin" 
    And I am on the homepage
    Then I should see "Logout"
