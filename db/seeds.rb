class Seed

  def self.begin
    seed = Seed.new
    seed.generate_parks
  end

  def generate_parks
    20.times do |i|
      park = NationalPark.create!(
        national_park: Faker::Address.city,
        state: Faker::Address.state
      )
      puts "Park #{i}: State is #{park.state} and the National Park is '#{park.national_park}'."
    end
  end 
end

Seed.begin