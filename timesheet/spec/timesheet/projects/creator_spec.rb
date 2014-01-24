require 'projects/creator'

describe Timesheet::Projects::Creator, '.create_project' do 
  let(:project_attributes) { {name:'project a', description:'my project description'} }
  let(:project_repository) { double :project }

  it 'creates a new project' do 
    project_repository.should_receive(:create_project).with('project a', 'my project description')
    described_class.create_project(project_repository, project_attributes) 
  end

end
