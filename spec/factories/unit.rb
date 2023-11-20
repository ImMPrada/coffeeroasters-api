FactoryBot.define do
  factory :unit do
    used_symbol { 'capsules' }
    description { 'Each capsule has 12.5 grams, so grams field must be 12.5' }
    grames { 12.5 }
  end
end
