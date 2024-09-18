module Sales
  module Listeners
    class ProjectListener
      def project_live_financing(project)
        Action.create(project:, klass: 'Sales::Listeners::ProjectListener', action: 'project_live_financing')

        Sales::Broadcasts::Projects::LiveFinance.add(project)
        Sales::Broadcasts::Projects::LiveFinance.replace(project)
      end

      def project_finance_pre_approval(project)
        Action.create(project:, klass: 'Sales::Listeners::ProjectListener', action: 'project_finance_pre_approval')

        Sales::Broadcasts::Projects::LiveFinance.replace(project)
      end

      def project_resolved(project)
        Action.create(project:, klass: 'Sales::Listeners::ProjectListener', action: 'project_resolved')

        Sales::Broadcasts::Projects::LiveFinance.replace(project)
      end

      def project_pending_approval(project)
        Action.create(project:, klass: 'Sales::Listeners::ProjectListener', action: 'project_pending_approval')

        Sales::Broadcasts::Projects::LiveFinance.replace(project)
      end
    end
  end
end
