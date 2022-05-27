class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, length: { minimum: 16 }
end
