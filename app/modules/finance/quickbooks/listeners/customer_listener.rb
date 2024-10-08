module Finance
  module Quickbooks
    module Listeners
      class CustomerListener
        def project_ready_for_ops(project)
          Action.create(actionable: project, klass: 'Finance::Quickbooks::Listeners::CustomerListener',
                        action: 'project_ready_for_ops')
          Finance::Quickbooks::Customers::FindOrCreate.call(project)
        end
      end
    end
  end
end
