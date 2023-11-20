FactoryBot.define do
  factory :frecuency do
    title { 'Every month' }
    description { '$12.00 per shipment. Includes free priority shipping.' }
    monthly_amount { 1 }
    base_price { 12.00 }
  end
end
