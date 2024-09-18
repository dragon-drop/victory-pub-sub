class Action < ApplicationRecord
  belongs_to :project
  after_create_commit { broadcast_prepend_to(project) }
end
