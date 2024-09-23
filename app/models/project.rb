class Project < ApplicationRecord
  has_many :actions, as: :actionable, dependent: :destroy

  STATUSES = ['Draft',
              'Live Financing',
              'Pending Approval',
              'Finance Pre-Approved',
              'Finance Approved',
              'Cancelled',
              'Ready for Ops',
              'Pending Project Visit',
              'Ready for Install',
              'In Progress',
              'Funds Requested',
              'Pending Collection',
              'Paid and Complete'].freeze
end
