require 'spec_helper'

describe ProjectsController do 

  describe 'GET /index' do 
    it 'assigns a new project list' do 
      projects = double :list_projects
      stub_const('Timesheet::Projects::ListAll', double(list_all:projects))
      get :index
      expect(assigns(:projects)).to eql projects
    end
  end

end
