require 'active_record_spec_helper'
require 'project'

describe "Looking up projects" do 
  describe ".list_all" do 
    context "when there are no projects" do 
      it "returns an empty list" do 
        Project.destroy_all
        expect(Project.list_all).to be_empty
      end
    end
  end
end
