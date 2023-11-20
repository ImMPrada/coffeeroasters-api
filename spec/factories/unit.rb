FactoryBot.define do
  factory :unit do
    used_symbol { "capsules" }
    description { "each capsule has 12.5 grames, so grames field must be 12.5" }
    grames { 12.5 }
  end
end
