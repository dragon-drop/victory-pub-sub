class Action < ApplicationRecord
  belongs_to :actionable, polymorphic: true
  after_create_commit { broadcast_prepend_to(project) }
end
