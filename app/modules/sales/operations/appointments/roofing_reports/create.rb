module Sales
  module Operations
    module Appointments
      module RoofingReports
        class Create
          def self.call(appointment)
            Action.create(actionable: appointment, klass: 'Sales::Operations::Appointments::RoofingReports::Create',
                          action: 'call(appointment)')
            Sales::GAF::API::Reports.create(appointment) if appointment.roofing?
          end
        end
      end
    end
  end
end
