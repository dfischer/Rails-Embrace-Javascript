When(/^I ask for all the projects$/) do
  @projects = ListAllProjects.new(Project).call
end

Then(/^I should retrieve no projects$/) do
  @projects.should be_empty
end

Given(/^there are projects$/) do
  CreateProject.new(title:'Project 1', description:'Project description 1').call
end

Then(/^I should retrieve all projects$/) do
  @projects.each do |project|
    project.title.should eql('Project 1')
    project.description.should eql('Project description 1')
  end
end
