module Ops
  module Operations
    module Projects
      class UpdateDependentQcProject
        def self.call(_project)
          Action.create(klass: 'Ops::Operations::Projects::UpdateDependentQcProject', action: 'call(project)')
        end
      end
    end
  end
end
