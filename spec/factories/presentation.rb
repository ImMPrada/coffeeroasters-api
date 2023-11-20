FactoryBot.define do
  factory :presentation do
    association :unit

    title { '10 capsules' }
    description { 'capsules for nespresso classic system' }
    amount { 10 }
  end
end
