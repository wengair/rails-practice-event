class User < ApplicationRecord
  has_many :likes
  has_many :events, through: :likes
end
