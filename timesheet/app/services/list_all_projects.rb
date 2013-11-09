class ListAllProjects

  def initialize(project_repository)
    @project_repository = project_repository
  end

  def call
    @project_repository.list_all
  end

end
