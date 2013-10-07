When(/^I ask for all the projects$/) do
  @projects = ListAllProjects.new.call
end

Then(/^I should retrieve no projects$/) do
  @projects.should be_empty
end

Project = Struct.new :title, :description
Given(/^there are projects$/) do
  @projects = [
    Project.new('Project 1', 'Project description1')
  ]
end

Then(/^I should retrieve all projects$/) do
  @projects.each do |project|
    project.title.should eql('Project 1')
    project.description.should eql('Project description 1')
  end
end
