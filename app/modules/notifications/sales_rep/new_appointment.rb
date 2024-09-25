module Notifications
  module SalesRep
    class NewAppointment
      def self.call(appointment)
        Action.create(actionable: appointment, klass: 'Notifications::SalesRep::NewAppointment', action: 'call')
      end
    end
  end
end
