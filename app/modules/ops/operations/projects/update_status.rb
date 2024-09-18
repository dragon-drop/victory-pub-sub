module Ops
  module Operations
    module Projects
      class UpdateStatus
        def self.call(project)
          Action.create(project:, klass: 'Ops::Operations::Projects::UpdateStatus', action: 'call')
        end
      end
    end
  end
end
