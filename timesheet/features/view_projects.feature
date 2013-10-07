Feature: List projects

  Scenario: There is no projects 
    When I ask for all the projects
    Then I should retrieve no projects

  Scenario: There are projects
    Given there are projects
    When I ask for all the projects
    Then I should retrieve all projects
