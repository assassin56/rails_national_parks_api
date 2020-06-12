class Seed

  def self.begin
    seed = Seed.new
    seed.generate_parks
  end

  def generate_parks
    20.times do |i|
      national_park = NationalPark.create!(
        national_park: Faker::Address.city,
        state: Faker::Address.state
      )
end