module Ops
  module Operations
    module Projects
      module PiiVisits
        class FinishPast
          def self.call(_project)
            Action.create(klass: 'Ops::Operations::Projects::PiiVisits::FinishPast', action: 'call(project)')
          end
        end
      end
    end
  end
end
