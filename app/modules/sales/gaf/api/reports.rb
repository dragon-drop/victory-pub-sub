module Sales
  module GAF
    module API
      class Reports
        def self.create(appointment)
          Action.create(actionable: appointment, klass: 'Sales::GAF::API::Reports', action: 'create(details)')
        end
      end
    end
  end
end
