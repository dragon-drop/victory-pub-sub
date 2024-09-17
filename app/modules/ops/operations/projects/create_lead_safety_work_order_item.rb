module Ops
  module Operations
    module Projects
      class CreateLeadSafetyWorkOrderItem
        def self.call(project)
          Action.create(klass: 'Ops::Operations::Projects::CreateLeadSafetyWorkOrderItem', action: 'call(project)')
        end
      end
    end
  end
end
