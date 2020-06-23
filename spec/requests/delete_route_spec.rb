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

  it 'returns status 200 ok when delete is successfull' do
    expect(response).to have_http_status(:ok)
  end

  describe 'errors when deleting routes', :type => :request do
    before do
      delete "/national_parks/666"
    end

    it 'should throw an error for an unspecified national park' do
      expect(JSON.parse(response.body)).to eq({"message" => "Couldn't find NationalPark with 'id'=666"})
    end
  end
end