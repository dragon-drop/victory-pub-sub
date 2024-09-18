module Ops
  module Operations
    module Projects
      module PiiVisits
        class CancelActiveBeforeProjectVisit
          def self.call(project)
            Action.create(project:, klass: 'Ops::Operations::Projects::PiiVisits::CancelActiveBeforeProjectVisit',
                          action: 'call(project)')
          end
        end
      end
    end
  end
end
