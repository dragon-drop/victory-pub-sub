module Commission
  module Operations
    module Ledger
      class UpdateForProject
        def self.call(project)
          Action.create(project:, klass: 'Commission::Operations::Ledger::UpdateForProject', action: 'call')
        end
      end
    end
  end
end
