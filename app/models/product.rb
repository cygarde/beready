class Product < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  CATEGORY = ["a","b"]

  validates :name, presence: true
  validates :description, presence: true
  validates :state, presence: true, inclusion: { in: [1,2,3], allow_nil: false }
  validates :unit_price, presence: true
  validates :city, presence: true
end
