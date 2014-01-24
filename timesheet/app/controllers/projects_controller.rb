class ProjectsController < ApplicationController
  def index
    @projects = Timesheet::Projects::ListAll.list_all Project
  end
end
