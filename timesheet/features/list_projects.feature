Feature: List projects
  As a user 
  In order to add persons to a project
  I want to be able to list all projects

  Scenario: There are no projects created
    Given there is no projects created
    When I visit the list projects page
    Then I should see "There is no projects"

  Scenario: There are some projects created
    Given the following projects exists
      |name     |description          |
      |ProjectA |Project for working  |
      |ProjectB |Project for not work |
    When I visit the list projects page
    Then I should see "ProjectA" 
