module Finance
  module Operations
    module Projects
      class SignAndApproveFinanceDocs
        def self.call(project)
          Action.create(actionable: project, klass: 'Finance::Operations::Projects::SignAndApproveFinanceDocs',
                        action: 'call(project)')
        end
      end
    end
  end
end
