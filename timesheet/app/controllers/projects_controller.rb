class ProjectsController < ApplicationController
  def index
    @projects = ListAllProjects.new.call
    render :json => @projects
  end
end
