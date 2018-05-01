class Location < ApplicationRecord
  has_many :openinghours
  has_many :seatings
  has_many :timeslots
  belongs_to :user
end
  