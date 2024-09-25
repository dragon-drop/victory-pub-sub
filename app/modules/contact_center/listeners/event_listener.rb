module ContactCenter
  module Listeners
    class EventListener
      def appointment_appointment_set(appointment)
        Action.create(klass: 'ContactCenter::Listeners::EventListener', action: 'appointment_appointment_set',
                      actionable: appointment)
        ContactCenter::Operations::Events::Create.call(appointment, key: 'appointment.appointment_set')
      end

      def appointment_appointment_confirmed(appointment)
        Action.create(klass: 'ContactCenter::Listeners::EventListener', action: 'appointment_appointment_confirmed',
                      actionable: appointment)
        ContactCenter::Operations::Events::Create.call(appointment, key: 'appointment.appointment_confirmed')
      end
    end
  end
end
