require 'spec_helper'

describe ProjectsController do 

  describe 'GET /index' do 
    let(:projects) { [double(:project)] }
    it 'assigns a new project list' do 
      Timesheet::Projects::ListAll.stub(:list_all).with(Project).and_return(projects)
      get :index
      expect(assigns(:projects)).to eql projects
    end
  end

end
