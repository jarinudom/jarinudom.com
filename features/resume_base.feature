Feature: Resume
  In order to hire me
  a prospective employer or client
  wants to see my resume
  
  Scenario: Go to the resume page
    Given I am on the resume page
    Then I should see "Resume" within ".active"
    And I should not see "Home" within ".active"