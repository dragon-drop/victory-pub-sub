class Appointment < ApplicationRecord
  has_many :actions, as: :actionable, dependent: :destroy
  belongs_to :project

  def roofing?
    [false, true].sample
  end
end
