module Ops
  module Listeners
    class PiiVisitListener
      def project_cancelled(project)
        Action.create(actionable: project, klass: 'Ops::Listeners::PiiVisitListener', action: 'project_cancelled')
        Ops::Operations::Projects::PiiVisits::CancelActive.call(project)
      end

      def project_pending_project_visit(project)
        Action.create(actionable: project, klass: 'Ops::Listeners::PiiVisitListener',
                      action: 'project_pending_project_visit')
        Ops::Operations::Projects::PiiVisits::CancelActiveBeforeProjectVisit.call(project)
        Ops::Operations::Projects::PiiVisits::FinishPast.call(project)
      end
    end
  end
end
