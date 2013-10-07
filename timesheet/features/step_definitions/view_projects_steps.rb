When(/^I ask for all the projects$/) do
  @projects = ListAllProjects.call
end

Then(/^I should retrieve no projects$/) do
  @projects.should be_empty
end

Given(/^there are projects$/) do
end

Then(/^I should retrieve all projects$/) do
end
