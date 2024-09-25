module ContactCenter
  module Operations
    module Events
      module Create
        def self.call(appointment, details)
          Action.create(klass: 'ContactCenter::Operations::Events::Create', action: "call(#{details}'",
                        actionable: appointment)
          ContactCenter::Regal::API::Events.create(appointment, name: appointment.status)
        end
      end
    end
  end
end
