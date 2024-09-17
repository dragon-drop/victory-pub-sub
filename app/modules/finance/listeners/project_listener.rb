module Finance
  module Listeners
    class ProjectListener
      def project_finance_approved(project)
        Action.create(klass: 'Finance::Listeners::ProjectListener', action: 'project_finance_approved')

        Finance::Operations::Projects::SignAndApproveFinanceDocs.call(project)
      end
    end
  end
end
