module Ops
  module Operations
    module Projects
      class UpdateStatus
        def self.call(_project)
          Action.create(klass: 'Ops::Operations::Projects::UpdateStatus', action: 'call')
        end
      end
    end
  end
end
