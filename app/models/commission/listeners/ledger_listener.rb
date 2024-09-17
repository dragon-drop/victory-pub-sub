module Commission
  module Listeners
    class LedgerListener
      def project_ready_for_ops(project)
        Action.create(klass: 'Commission::Listeners::LedgerListener', action: 'project_ready_for_ops')
        Commission::Operations::Ledger::UpdateForProject.call(project)
      end
    end
  end
end
