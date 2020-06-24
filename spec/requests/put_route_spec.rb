require 'rails_helper'

describe 'put a national_park route', :type => :request do
  
  before do
    @national_park = NationalPark.create({:national_park => "Yellow Stone", :state => "Montana", :id => 33})
    put '/national_parks/33', params: { :national_park => "Not Yellow Stone"}
  end

  it 'should return updated national park' do
    expect(JSON.parse(response.body)['message']).to eq('This National Park has been updated successfully!')
  end
  
  it 'returns an updated status' do
    expect(response).to have_http_status(200)
  end
end