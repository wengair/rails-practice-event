class Review < ApplicationRecord
  belongs_to :event
  validates :rating, :content, presence: true
end
