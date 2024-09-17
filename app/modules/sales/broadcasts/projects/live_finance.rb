module Sales
  module Broadcasts
    module Projects
      class LiveFinance
        def self.add(_project)
          Action.create(klass: 'Sales::Broadcasts::Projects::LiveFinance', action: 'add(project)')
        end

        def self.replace(_project)
          Action.create(klass: 'Sales::Broadcasts::Projects::LiveFinance', action: 'replace(project)')
        end
      end
    end
  end
end
