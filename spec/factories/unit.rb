FactoryBot.define do
  factory :unit do
    trait :capsules do
      used_symbol { 'capsules' }
      description { 'Each capsule has 12.5 grams, so grams field must be 12.5' }
      grames { 12.5 }
    end

    trait :grames do
      used_symbol { 'grames' }
      description { 'This is a generic unit in grames' }
      grames { 1 }
    end
  end
end
