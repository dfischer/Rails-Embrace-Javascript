class ListAllProjects

  def initialize(repository=Project)
    @repository = repository
  end

  def call
    @repository.list_all
  end

end
