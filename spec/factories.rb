FactoryBot.define do
  factory(:national_park) do
    national_park {Faker::Address.city}
    state {Faker::Address.state}
  end
end