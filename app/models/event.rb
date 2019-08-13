class Event < ApplicationRecord
  has_many :likes, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :users, through: :likes
  mount_uploader :pic, PhotoUploader
  validates :name, :pic, :start_time, :end_time, :capacity, :place, :link, presence: true;
end
