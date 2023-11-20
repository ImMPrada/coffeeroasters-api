class Grind < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true

  has_many :preference_grinds
  has_many :preferences, through: :preference_grinds
end
