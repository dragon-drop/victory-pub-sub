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
      success if updated

      updated
    end

    private

    def success
      publish(:project_updated, project)
      publish(project_status_event_key, project) if project.saved_change_to_status?
    end

    def project_status_event_key
      "project_#{project.status.downcase.parameterize.underscore}".to_sym
    end

    attr_reader :project, :changes
  end
end
