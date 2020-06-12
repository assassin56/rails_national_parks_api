class NationalPark < ApplicationRecord 
  validates_presence_of :national_park
  validates_presence_of :state
  scope :search_park, -> (park) { where(park: park) }

  def self.search(search_vals)
    search_park(search_vals)
  end
end