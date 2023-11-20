FactoryBot.define do
  factory :preference_grind do
    association :preference
    association :grind
  end
end
