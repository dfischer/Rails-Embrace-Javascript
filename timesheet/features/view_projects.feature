Feature: Viewing all projects

  Scenario: No projects 
    Given there are no projects 
    When I go to the all projects end point
    Then I should retrieve a there are no projects

  Scenario: There are some projects
    Given there are some projects 
    When I go to the all projects end point 
    Then I should retrieve all projects
