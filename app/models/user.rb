class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :products
  has_many :bookings

  validates :firstname, presence: true, length: { maximum: 30 }
  validates :lastname, presence: true, uniqueness: true, length: { maximum: 30 }
  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true
  validates :password, confirmation: true
  validates :address, presence: true
  validates :zip_code, presence: true
  validates :country, presence: true
  validates :phone, presence: true, uniqueness: true
end
