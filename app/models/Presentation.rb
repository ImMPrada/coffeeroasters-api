class Presentation < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :amount, presence: true

  belongs_to :unit

  def total_grames
    amount * unit.grames
  end
end
