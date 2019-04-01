FactoryBot.define do
  factory :state do
    device {Faker::Device.model_name} 
    os {Faker::Device.platform}
    memory  {Faker::Number.number(4)} 
    storage  {Faker::Number.number(4)}
    feedback 
  end
end