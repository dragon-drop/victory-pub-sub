module Notifications
  module Listeners
    class SalesRepListener
      def appointment_user_changed(appointment)
        Action.create(actionable: appointment, klass: 'Notifications::Listeners::SalesRepListener',
                      action: 'appointment_user_changed')
        Notifications::SalesRep::NewAppointment.call(appointment)
      end
    end
  end
end
