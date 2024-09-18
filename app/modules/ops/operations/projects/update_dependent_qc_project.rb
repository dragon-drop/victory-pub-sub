module Ops
  module Operations
    module Projects
      class UpdateDependentQcProject
        def self.call(project)
          Action.create(project:, klass: 'Ops::Operations::Projects::UpdateDependentQcProject', action: 'call(project)')
        end
      end
    end
  end
end
