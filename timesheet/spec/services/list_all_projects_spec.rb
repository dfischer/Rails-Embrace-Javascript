require_relative '../../app/services/list_all_projects'

describe ListAllProjects, "#call" do 
  let(:service) { ListAllProjects.new }

  context 'when there are no projects' do 
    it 'returns nothing' do 
      expect(service.call).to eql []
    end
  end


end
