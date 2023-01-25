class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :lesson

  validates :start_date, presence: true
  validates :status, presencef: true
end
