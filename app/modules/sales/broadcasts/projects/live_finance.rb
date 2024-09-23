module Sales
  module Broadcasts
    module Projects
      class LiveFinance
        def self.add(project)
          Action.create(actionable: project, klass: 'Sales::Broadcasts::Projects::LiveFinance', action: 'add(project)')
        end

        def self.replace(project)
          Action.create(actionable: project, klass: 'Sales::Broadcasts::Projects::LiveFinance',
                        action: 'replace(project)')
        end
      end
    end
  end
end
