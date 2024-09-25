module Sales
  module Listeners
    class RoofingReportListener
      def appointment_appointment_confirmed(appointment)
        Action.create(actionable: appointment, klass: 'Sales::Listeners::RoofingReportListener',
                      action: 'appointment_appointment_confirmed(appointment)')
        return unless ENV['FEATURE_GAF'] == 'true'

        Sales::Operations::Appointments::RoofingReports::Create.call(appointment)
      end
    end
  end
end
