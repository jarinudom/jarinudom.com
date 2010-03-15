Feature: Homepage Base
  In order to check out my awesome website
  an anonymous user
  wants the home page to load
  
  Scenario: Go to the home page
    Given I am on the home page
    Then I should see "Jarin Udom"
    And I should see "Home" within ".active"
    And I should not see "Resume" within ".active"