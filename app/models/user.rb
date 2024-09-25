class User < ApplicationRecord
  has_many :appointments, dependent: :nullify
end
