module Ops
  module Operations
    module Projects
      module PiiVisits
        class CancelActiveBeforeProjectVisit
          def self.call(_project)
            Action.create(klass: 'Ops::Operations::Projects::PiiVisits::CancelActiveBeforeProjectVisit',
                          action: 'call(project)')
          end
        end
      end
    end
  end
end
