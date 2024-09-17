module Commission
  module Operations
    module Ledger
      class UpdateForProject
        def self.call(_project)
          Action.create(klass: 'Commission::Operations::Ledger::UpdateForProject', action: 'call')
        end
      end
    end
  end
end
