class Appointment < ApplicationRecord
  has_many :actions, as: :actionable, dependent: :destroy
end
