module Ops
  module Listeners
    class QcOpportunityListener
      def project_updated(project)
        Action.create(actionable: project, klass: 'Ops::Listeners::QcOpportunityListener', action: 'project_updated')
        Ops::Operations::Projects::QcOpportunities::UpdateLast.call(project)
      end

      def appointment_status_changed(appointment)
        Action.create(actionable: appointment, klass: 'Ops::Listeners::QcOpportunityListener',
                      action: 'appointment_status_changed')
        Ops::Operations::Projects::QcOpportunities::UpdateLast.call(appointment.project)
      end
    end
  end
end
