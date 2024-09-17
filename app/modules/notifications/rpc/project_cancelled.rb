module Notifications
  module Rpc
    class ProjectCancelled
      def self.call(_project)
        Action.create(klass: 'Notifications::Rpc::ProjectCancelled', action: 'call')
      end
    end
  end
end
