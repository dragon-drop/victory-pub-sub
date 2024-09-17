module Finance
  module Quickbooks
    module Customers
      class FindOrCreate
        def self.call(_project)
          Action.create(klass: 'Finance::Quickbooks::Customer::FindOrCreate', action: 'call(project)')
        end
      end
    end
  end
end
