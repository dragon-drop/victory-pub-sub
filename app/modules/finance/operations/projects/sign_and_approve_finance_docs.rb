module Finance
  module Operations
    module Projects
      class SignAndApproveFinanceDocs
        def self.call(_project)
          Action.create(klass: 'Finance::Operations::Projects::SignAndApproveFinanceDocs', action: 'call(project)')
        end
      end
    end
  end
end
