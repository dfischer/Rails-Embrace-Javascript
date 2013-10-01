Given(/^there are no projects$/) do
end

When(/^I go to the all projects end point$/) do
  visit all_projects_url
end

Then(/^I should retrieve a there are no projects$/) do
  page.content.should == {message:'There are no projects'} 
end

Given(/^there are some projects$/) do
    pending # express the regexp above with the code you wish you had
end

Then(/^I should retrieve all projects$/) do
    pending # express the regexp above with the code you wish you had
end
