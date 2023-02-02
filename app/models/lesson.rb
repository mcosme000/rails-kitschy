class Lesson < ApplicationRecord
  has_many :bookings, dependent: :destroy
  belongs_to :user

  validates :name, length: { minimum: 3 }
  validates :address, presence: true
  validates :cuisine_genre, presence: true
  validates :description, length: { in: 10..500 }
  validates :lesson_length_minutes, numericality: { only_integer: true }
  validates :fee, numericality: { only_integer: true }
  validates :capacity, numericality: { only_integer: true }

  # SEARCH CODE
  include PgSearch::Model
  pg_search_scope :search_by_name_description_and_genre,
    against: [ :name, :description, :cuisine_genre ],
    using: {
      tsearch: { prefix: true }
    }

  # GEOCODER CODE
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
