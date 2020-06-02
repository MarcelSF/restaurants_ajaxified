class Review < ApplicationRecord
  belongs_to :restaurant
  validates :contente, length: { minimum: 20 }
end
