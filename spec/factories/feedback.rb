FactoryBot.define do
  factory :feedback do
    company_token{ Faker::Number.decimal(2) }
    number {Faker::Number.number(5)}
  end
end
