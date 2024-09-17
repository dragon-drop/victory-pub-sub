module Notifications
  module Listeners
    class RpcListener
      def project_cancelled(project)
        Action.create(klass: 'Notifications::Listeners::RpcListener', action: 'project_cancelled')
        Notifications::Rpc::ProjectCancelled.call(project)
      end
    end
  end
end
