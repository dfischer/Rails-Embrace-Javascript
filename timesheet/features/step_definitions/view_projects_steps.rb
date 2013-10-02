Given(/^there are no projects$/) do
  @projects = []
end

Project = Struct.new :title, :description
Given(/^there are some projects$/) do
  @projects = [
    Project.new('Project One', 'First Project'), 
    Project.new('Project Two', 'Second Project')
  ]
end

When(/^I go to the all projects end point$/) do
  visit all_projects_url
end

Then(/^I should retrieve no projects$/) do
 @projects.should be_empty 
end

Then(/^I should retrieve all projects$/) do
  @projects.should_not be_empty
end
