class Unit < ApplicationRecord
  validates :used_symbol, presence: true
  validates :grames, presence: true

  has_many :presentations, dependent: :destroy
end
