class Presentation < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :amount, presence: true

  belongs_to :unit
end
