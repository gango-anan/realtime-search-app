require 'faker'

FactoryBot.define do
  factory :search_history do
    article_id { Faker::Number.positive }
  end
end
