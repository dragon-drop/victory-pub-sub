module Ops
  module Listeners
    class PiiVisitListener
      def project_cancelled(project)
        Action.create(klass: 'Ops::Listeners::PiiVisitListener', action: 'project_cancelled')
        Ops::Operations::Projects::PiiVisits::CancelActive.call(project)
      end
    end
  end
end
