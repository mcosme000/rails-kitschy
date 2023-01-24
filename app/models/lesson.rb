class Lesson < ApplicationRecord
  has_many :bookings
  belongs_to :user
  validates :name, absence: false
end
