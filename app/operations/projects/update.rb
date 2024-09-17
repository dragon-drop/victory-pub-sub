module Projects
  class Update
    include Wisper::Publisher
    def self.call(project, changes)
      updated = project.update(changes)
      if updated
        publish(:project_updated, project)
      else
        publish(:project_not_updated, project)
      end

      updated
    end
  end
end
