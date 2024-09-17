module Ops
  module Operations
    module Projects
      module QcOpportunities
        class UpdateLast
          def self.call(_project)
            Action.create(klass: 'Ops::Operations::Projects::QcOpportunities::UpdateLast', action: 'call(project)')
          end
        end
      end
    end
  end
end
