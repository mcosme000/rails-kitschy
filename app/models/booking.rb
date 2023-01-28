class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :lesson

  validates :start_date, presence: true
  validates :start_time, presence: true
  validates :participants, presence: true
  validates :status, presence: true
  enum :status, { pending: 0, accepted: 1, canceled: 2, ended: 3 }
end
