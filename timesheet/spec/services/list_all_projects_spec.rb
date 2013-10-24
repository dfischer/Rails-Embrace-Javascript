require_relative '../../app/services/list_all_projects'

describe ListAllProjects, "#call" do 
  let(:service) { ListAllProjects.new(repository) }

  context 'when there are no projects' do 
    let(:repository) { stub_const 'Project', double(list_all:[]) }
    it 'returns an empty list of projects' do 
      expect(service.call).to eql []
    end
  end


end
