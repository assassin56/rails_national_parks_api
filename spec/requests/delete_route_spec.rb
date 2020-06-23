require 'rails_helper'

describe 'delete route', :type => :request do
  
  before do
    post '/national_parks', params: { :national_park => 'Yellow Stone', :state => 'Montana' }
    park_id = JSON.parse(response.body) ['id']
    delete "/national_parks/#{park_id}"
  end

  it 'deletes a national park' do
    expect(JSON.parse(response.body)).to eq({"message" => "National Park successfully deleted!"})
  end
end