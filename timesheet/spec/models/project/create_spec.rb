require 'spec_helper'

describe Project, '.create_project' do 
  let(:name) { 'Project A' }
  let(:desc) { 'Project Desc' }

  it 'creates a new project' do 
    expect{
      Project.create_project(name, desc)
    }.to change(Project, :count).by 1
  end

end
