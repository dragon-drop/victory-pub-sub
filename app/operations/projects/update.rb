module Projects
  class Update
    include Wisper::Publisher

    def self.call(project, changes)
      new(project, changes).call
    end

    def initialize(project, changes)
      @project = project
      @changes = changes
    end

    def call
      Action.create(klass: 'Projects::Update', action: 'call')
      updated = project.update(changes)
      if updated
        publish(:project_updated, project)
        if project.saved_change_to_status?
          publish("project_#{project.status.downcase.parameterize.underscore}".to_sym,
                  project)
        end
      else
        publish(:project_not_updated, project)
      end

      updated
    end

    private

    attr_reader :project, :changes
  end
end
