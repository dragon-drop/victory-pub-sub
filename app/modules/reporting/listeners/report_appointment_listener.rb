module Reporting
  module Listeners
    class ReportAppointmentListener
      def appointment_updated(appointment)
        Action.create(klass: 'Reporting::Listeners::ReportAppointmentListener', action: 'appointment_updated')

        Reporting::Operations::ReportAppointments::CreateOrUpdate.call(appointment.id)
      end
    end
  end
end
