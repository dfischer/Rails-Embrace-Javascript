require 'projects/list_all'

describe Timesheet::Projects::ListAll, '.list_all' do  
  let(:project_repository) { double :project_repository } 

  it 'returns a list of projects' do 
    expect(project_repository).to receive(:all)
    described_class.list_all(project_repository)
  end

end
