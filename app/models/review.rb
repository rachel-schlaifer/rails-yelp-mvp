class Review < ApplicationRecord
  belongs_to :restaurant
  RATING = [0, 1, 2, 3, 4, 5]
  validates :content, :rating, presence:true
  validates :rating, presence: true, numericality: { only_integer: true }, inclusion: { in: RATING }
end
