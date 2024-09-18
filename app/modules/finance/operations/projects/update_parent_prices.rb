module Finance
  module Operations
    module Projects
      class UpdateParentPrices
        def self.call(project)
          Action.create(project:, klass: 'Finance::Operations::Projects::UpdateParentPrices', action: 'call(project)')
        end
      end
    end
  end
end
