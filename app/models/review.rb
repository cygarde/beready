class Review < ApplicationRecord
  belongs_to :booking

  validates :rating, inclusion: { in: [1,2,3], allow_nil: false }

end
