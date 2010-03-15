Feature: Resume
  In order to hire me
  a prospective employer or client
  wants to see my resume
  
  Scenario: Go to the resume page
    Given I am on the resume page
    Then I should see "Resume" within ".active"
      And I should not see "Home" within ".active"
    
  Scenario: Look at my job experience
    Given a job with position "Founder" and employer "Robot Mode LLC"
      And a job with position "Programmer" and employer "Jim Bob, Inc."
      And a job with position "Tech Support" and employer "Super Company"
    
    When I go to the resume page
    Then I should see "Founder" within ".job"
      And I should see "Super Company" within ".job"