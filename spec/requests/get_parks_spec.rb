require 'rails_helper'

describe "GET all parks route", :type => :request do
  let!(:national_parks) { FactoryBot.create_list(:national_park, 20)}
  
  before { get '/national_parks' }

  it 'returns all parks' do
    expect(JSON.parse(response.body).size).to eq(20)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end

  it 'returns status ok' do
    expect(response).to have_http_status(:ok)
  end
end

describe "GET request error message", :type => :request do
  before { get '/national_parks/666'}

  it 'returns an error message for unidentifiable national park' do
    expect(JSON.parse(response.body)).to eq({"message" => "Couldn't find NationalPark with 'id'=666"})
  end

  it 'returns status 404' do
    expect(response).to have_http_status(:not_found)
  end
end