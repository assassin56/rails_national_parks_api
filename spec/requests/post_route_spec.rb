require 'rails_helper'

describe "post a national park route", :type => :request do
  
  before do
    post '/national_parks', params: { :national_park => "Yellow Stone", :state => "Montana"}
  end

  it 'returns the name of the national park' do
    expect(JSON.parse(response.body)['national_park']).to eq('Yellow Stone')
  end

  it 'returns the name of a state to which a national park is associated with' do
    expect(JSON.parse(response.body)['state']).to eq('Oreygun?')
  end
end