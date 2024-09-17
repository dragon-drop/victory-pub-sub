module Finance
  module Operations
    module Projects
      class UpdateParentPrices
        def self.call(_project)
          Action.create(klass: 'Finance::Operations::Projects::UpdateParentPrices', action: 'call(project)')
        end
      end
    end
  end
end
