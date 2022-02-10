class Review < ApplicationRecord
  belongs_to :review
  belongs_to :user

  validates :rating, presence: true, inclusion: 1..10
  validates :review, presence: true, length: { maximum: 500 }
end
