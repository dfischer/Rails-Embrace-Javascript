module Timesheet
  module Projects

    class ListAll
      def self.list_all project_repository
        new(project_repository).list_all
      end

      def initialize project_repository
        @project_repository = project_repository
      end

      def list_all
        project_repository.all
      end

      private

      attr_reader :project_repository

    end

  end
end
