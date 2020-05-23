class Product < ApplicationRecord
  belongs_to :user
  CATEGORY = ["a","b"]

  validates :name, presence: true
  validates :description, presence: true
  validates :state, presence: true, inclusion: { in: [1,2,3], allow_nil: false }
  validates :unit_price, precence: true
  validates :country, precence: true
end
