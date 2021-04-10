class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :surfboards, dependent: :destroy
  has_many :bookings, dependent: :destroy, inverse_of: 'client'
  has_one_attached :profile_pic

  def capital_name
    username.capitalize
  end
end
