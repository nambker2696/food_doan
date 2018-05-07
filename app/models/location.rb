class Location < ApplicationRecord
  has_many :openinghours
  has_many :seatings
  has_many :timeslots
  has_many :dishes
  has_many :reviews
  belongs_to :user
  has_many :likes, dependent: :destroy, as: :target
end
  