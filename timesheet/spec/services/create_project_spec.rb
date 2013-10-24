require_relative '../../app/services/create_project'
describe CreateProject, '#call' do 
  let(:service) { CreateProject.new(project_attributes) }

  context 'when valid attributes' do 
    let(:project_attributes) { {title:'Project 1', description:'Project description 1'} }
    before do 
      Project.should_receive(:create!).with(project_attributes).and_return(true)
    end
    it 'creates a new project' do 
      expect(service.call).to be_true  
    end
  end

end
