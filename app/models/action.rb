class Action < ApplicationRecord
  belongs_to :project
  after_create_commit { broadcast_append_to(project) }
end
