module Timesheet
  module Projects
    class Creator

      def self.create_project(project_repository, attributes)
        new(project_repository).create_project(attributes)
      end

      def initialize(project_repository)
        @project_repository = project_repository
      end

      def create_project(attributes)
        project_repository.create_project(attributes[:name],
                                         attributes[:description])
      end

      private 
      attr_reader :project_repository
    end
  end
end
