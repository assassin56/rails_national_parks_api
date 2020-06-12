class AddParksTable < ActiveRecord::Migration[5.2]
  def change
    create_table :national_parks do |t|
      t.string :national_park
      t.string :state
    end
  end
end
