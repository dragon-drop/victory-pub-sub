module Ops
  module Operations
    module Projects
      module QcOpportunities
        class UpdateLast
          def self.call(project)
            Action.create(actionable: project, klass: 'Ops::Operations::Projects::QcOpportunities::UpdateLast',
                          action: 'call(project)')
          end
        end
      end
    end
  end
end
