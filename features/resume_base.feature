Feature: Resume
  In order to hire me
  a prospective employer or client
  wants to see my resume
  
  Scenario: Go to the resume page
    Given a resume
    And a job with position "Founder" and employer "Robot Mode LLC"
    And a job with position "Tech Support" and employer "Super Company"
      
    When I go to the resume page
    
    # Make sure the right navigation link is highlighted
    Then I should see "Resume" within ".active"
    And I should not see "Home" within ".active"
    
    # Make sure it shows my contact info
    Then I should see "(123) 456-7890" within "div[@id='sidebar']"
    And I should see "super good job" within "div[@id='summary']"
    
    # Make sure it shows jobs
    Then I should see "Founder" within ".job"
    And I should see "Super Company" within ".job"