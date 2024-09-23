module Notifications
  module Rpc
    class ProjectCancelled
      def self.call(project)
        Action.create(actionable: project, klass: 'Notifications::Rpc::ProjectCancelled', action: 'call')
      end
    end
  end
end
