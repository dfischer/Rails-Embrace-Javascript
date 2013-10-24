class CreateProject

  def initialize(attr, repository=Project) 
    @repository = repository
    @attr = attr
  end

  def call
    @repository.create!(@attr)
  end
  
end
