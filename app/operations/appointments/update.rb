module Appointments
  class Update
    include Wisper::Publisher

    def self.call(appointment, changes)
      new(appointment, changes).call
    end

    def initialize(appointment, changes)
      @appointment = appointment
      @changes = changes
    end

    def call
      Action.create(klass: 'Appointments::Update', action: 'call', actionable: appointment)
      updated = appointment.update(changes)
      success if updated

      updated
    end

    private

    def success
      publish(:appointment_updated, appointment)
      publish(appointment_status_event_key, appointment) if appointment.saved_change_to_status?
    end

    def appointment_status_event_key
      "appointment_#{appointment.status.downcase.parameterize.underscore}".to_sym
    end

    attr_reader :appointment, :changes
  end
end
