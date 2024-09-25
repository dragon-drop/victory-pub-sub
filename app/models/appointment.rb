class Appointment < ApplicationRecord
  has_many :actions, as: :actionable, dependent: :destroy
  belongs_to :project
  belongs_to :user, optional: true

  def roofing?
    [false, true].sample
  end
end
