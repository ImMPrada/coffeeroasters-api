class Unit < ApplicationRecord
  validates :used_symbol, presence: true
  validates :grames, presence: true
end
