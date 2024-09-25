module ContactCenter
  module Regal
    module API
      class Events
        def self.create(appointment, details)
          Action.create(klass: 'ContactCenter::Regal::API::Events', action: "create(#{details})",
                        actionable: appointment)
        end
      end
    end
  end
end
