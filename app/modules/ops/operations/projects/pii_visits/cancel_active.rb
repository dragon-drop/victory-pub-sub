module Ops
  module Operations
    module Projects
      module PiiVisits
        class CancelActive
          def self.call(_project)
            Action.create(klass: 'Ops::Operations::Projects::PiiVisits::CancelActive', action: 'call(project)')
          end
        end
      end
    end
  end
end
