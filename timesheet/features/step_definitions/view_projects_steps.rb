Given(/^there are no projects$/) do
end

When(/^I go to the all projects end point$/) do
  visit all_projects_url
end

Then(/^I should retrieve no projects$/) do
  ActiveSupport::JSON.decode(page.source).fetch('projects').should be_empty
end

Given(/^there are some projects$/) do
end

Then(/^I should retrieve all projects$/) do
    pending # express the regexp above with the code you wish you had
end
