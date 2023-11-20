class Frecuency < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :monthly_amount, presence: true
  validates :base_price, presence: true
end
