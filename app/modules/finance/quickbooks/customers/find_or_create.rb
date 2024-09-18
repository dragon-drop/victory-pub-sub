module Finance
  module Quickbooks
    module Customers
      class FindOrCreate
        def self.call(project)
          Action.create(project:, klass: 'Finance::Quickbooks::Customer::FindOrCreate', action: 'call(project)')
        end
      end
    end
  end
end
