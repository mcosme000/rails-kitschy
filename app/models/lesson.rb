class Lesson < ApplicationRecord
  has_many :bookings
  belongs_to :user

  validates :name, length: {minimum: 3}
  validates :address, presence: true
  validates :cuisine_genre, presence: true
  validates :description, length: {in: 10..175}
  validates :lesson_length_minutes, numericality: {only_integer: true}
  validates :fee, numericality: {only_integer: true}
  validates :capacity, numericality: {only_integer: true}
end
