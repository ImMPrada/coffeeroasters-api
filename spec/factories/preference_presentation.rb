FactoryBot.define do
  factory :preference_presentation do
    association :preference
    association :presentation
  end
end
