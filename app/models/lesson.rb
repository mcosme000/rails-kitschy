class Lesson < ApplicationRecord
  has_many :bookings
  belongs_to :user

  validate :users, :email, :address, :description, :capacity, :cuisine_genre, :fee, :lesson_length_minutes, presence: true
end
