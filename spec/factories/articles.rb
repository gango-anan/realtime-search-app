require 'faker'

FactoryBot.define do
  factory :article do
    title { Faker::Name.unique.name }
    body { Faker::Lorem.paragraph }
  end
end
