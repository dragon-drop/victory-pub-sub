module Ops
  module Listeners
    class QcOpportunityListener
      def project_updated(project)
        Action.create(actionable: project, klass: 'Ops::Listeners::QcOpportunityListener', action: 'project_updated')
        Ops::Operations::Projects::QcOpportunities::UpdateLast.call(project)
      end
    end
  end
end
