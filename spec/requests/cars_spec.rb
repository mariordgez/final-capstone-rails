require 'rails_helper'

describe 'Cars API', type: :request do
  let!(:car_test) do
    FactoryBot.create(:car, name: 'BWM X2', model: '2021', brand: 'BMW', price: 1_000_000.00,
                            image_url: 'http://fakeurl.com/bmw', removed: false)
  end
  it 'reponse is success' do
    get "/api/v1/cars/#{car_test.id}"
    expect(response).to have_http_status(:ok)
  end

  it 'reponse is hass message with successful' do
    get "/api/v1/cars/#{car_test.id}"
    json = JSON.parse(response.body)
    expect(json['message']).to eql('successful')
  end

  it 'has two elements data and message' do
    get "/api/v1/cars/#{car_test.id}"
    expect(JSON.parse(response.body).size).to eq(2)
  end

  it 'reponse is not found when car is not found' do
    get '/api/v1/cars/5'
    expect(response).to have_http_status(:bad_request)
  end

  it 'has the attribute removed' do
    get "/api/v1/cars/#{car_test.id}"
    json = JSON.parse(response.body, symbolize_names: true)
    expect(json[:data]).to have_key(:removed)
  end
end
