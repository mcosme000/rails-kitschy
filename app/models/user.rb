class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :lessons
  has_many :bookings
  has_one_attached :photo

  validates :email, format: { with: /\A[^@\s]+@([^@.\s]+\.)+[^@.\s]+\z/ }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
