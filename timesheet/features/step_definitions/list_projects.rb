Given(/^there is no projects created$/) do
end

Given(/^the following projects exists$/) do |table|
  table.hashes.each do |project_info|
    Timesheet::Projects::Creator.create_project(Project, project_info)
  end
end

When(/^I visit the list projects page$/) do
  visit projects_path
end

Then(/^I should see "(.*?)"$/) do |msg|
  expect(page).to have_content(msg)
end
