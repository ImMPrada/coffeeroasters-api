class Presentation < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :amount, presence: true
  validates :price, presence: true

  belongs_to :unit
  has_many :preference_presentations
  has_many :preferences, through: :preference_presentations

  def total_grames
    amount * unit.grames
  end
end
