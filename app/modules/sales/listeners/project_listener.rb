module Sales
  module Listeners
    class ProjectListener
      def project_live_financing(project)
        Action.create(klass: 'Sales::Listeners::ProjectListener', action: 'project_live_financing')

        Sales::Broadcasts::Projects::LiveFinance.add(project)
      end
    end
  end
end
