class Preference < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
end
