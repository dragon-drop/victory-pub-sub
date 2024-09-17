class Action < ApplicationRecord
  after_create_commit { broadcast_append_to('actions') }
end
