FactoryBot.define do
  factory(:national_parks) do
    national_park {Faker::Address.city}
    state {Faker::Address.state}
  end
end