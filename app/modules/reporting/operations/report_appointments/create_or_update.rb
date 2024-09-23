module Reporting
  module Operations
    module ReportAppointments
      class CreateOrUpdate
        def self.call(appointment_id)
          appointment = Appointment.find(appointment_id)
          Action.create(actionable: appointment, klass: 'Reporting::Operations::ReportAppointments::CreateOrUpdate',
                        action: 'call(appointment_id)')
        end
      end
    end
  end
end
