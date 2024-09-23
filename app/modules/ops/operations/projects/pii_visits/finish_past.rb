module Ops
  module Operations
    module Projects
      module PiiVisits
        class FinishPast
          def self.call(project)
            Action.create(actionable: project, klass: 'Ops::Operations::Projects::PiiVisits::FinishPast',
                          action: 'call(project)')
          end
        end
      end
    end
  end
end
