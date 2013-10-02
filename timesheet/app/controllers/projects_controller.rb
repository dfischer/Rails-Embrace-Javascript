class ProjectsController < ApplicationController
  def all
    render :json => {projects:[]}.to_json
  end
end
