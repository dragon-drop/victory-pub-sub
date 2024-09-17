class Action < ApplicationRecord
  after_create_commit lambda {
                        broadcast_append_to(
                          :actions,
                          target: 'action_list'
                        )
                      }
end
