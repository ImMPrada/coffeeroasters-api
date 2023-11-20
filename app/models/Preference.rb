class Preference < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true

  has_many :preference_presentations
  has_many :presentations, through: :preference_presentations
  has_many :preference_grinds
  has_many :grinds, through: :preference_grinds
end
