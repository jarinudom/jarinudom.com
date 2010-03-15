Feature: Resume
  In order to hire me
  a prospective employer or client
  wants to see my resume
  
  Scenario: Go to the resume page
    Given a resume exists
      And the following jobs exist:
        | position | employer       |
        | Founder  | Robot Mode LLC |
        | Support  | Super Company  |
      
      And the following skills exist:
        | name            | level |
        | Widget Cranking | 1     |
        | Flying          | 2     |
        | Laser Beams     | 3     |
      
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
    
    # Make sure it shows skills
    Then I should see "Widget Cranking" within "li[@class='skill_1']"
      And I should see "skill_1.png" within "li[@class='skill_1']"
      And I should see "Flying" within "li[@class='skill_2']"
      And I should see "skill_2.png" within "li[@class='skill_2']"
      And I should see "Laser Beams" within "li[@class='skill_3']"
      And I should see "skill_3.png" within "li[@class='skill_3']"