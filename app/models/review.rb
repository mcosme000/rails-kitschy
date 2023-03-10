class Review < ApplicationRecord
  belongs_to :lesson
  belongs_to :user
  validates :content, presence: true, length: { minimum: 10 }
  validates :rating, presence: true, numericality: { in: 1..5 }
end
