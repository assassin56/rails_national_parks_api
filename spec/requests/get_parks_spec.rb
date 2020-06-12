require 'rails_helper'

describe "get all parks route", :type => :request do
  let!(:national_parks) { FactoryBot.create_list(:national_parks, 20)}
  
  before { get '/national_parks' }

  it 'returns all parks' do
    expect(JSON.parse(response.body).size).to eq(20)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end