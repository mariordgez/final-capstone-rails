require 'rails_helper'

describe 'Cars API', type: :request do
  let!(:car_test) do
    FactoryBot.create(:car, name: 'BWM X2', model: '2019', brand: 'BMW', price: 1_000_000.00,
                            image_url: 'http://fakeurl.com/bmw', removed: false)
    FactoryBot.create(:car, name: 'Audi X2', model: '2021', brand: 'Audi', price: 1_000_000.00,
                            image_url: 'http://fakeurl.com/audi', removed: false)
    FactoryBot.create(:car, name: 'Mercedes X2', model: '2016', brand: 'Mercedes Benz', price: 1_000_000.00,
                            image_url: 'http://fakeurl.com/mercedes', removed: false)
    FactoryBot.create(:car, name: 'Toyota X2', model: '2025', brand: 'Toyota', price: 1_000_000.00,
                            image_url: 'http://fakeurl.com/toyota', removed: false)
    FactoryBot.create(:car, name: 'Lux', model: '2022', brand: 'Lux', price: 1_000_000.00,
                            image_url: 'http://fakeurl.com/lux', removed: false)
    FactoryBot.create(:car, name: 'Mazda X2', model: '2021', brand: 'Mazda', price: 1_000_000.00,
                            image_url: 'http://fakeurl.com/mazda', removed: false)
  end
  it 'status is ok' do
    get "/api/v1/cars/"
    expect(response).to have_http_status(:ok)
  end

  it 'message is successful' do
    get "/api/v1/cars/"
    json = JSON.parse(response.body)
    expect(json['message']).to eql('Car list successfully fetched!')
  end

  it 'has two elements data and message' do
    get "/api/v1/cars/"
    expect(JSON.parse(response.body).size).to eq(2)
  end

  it 'has six cars in the list' do
    get "/api/v1/cars/"
    json = JSON.parse(response.body)
    expect((json['data']).size).to eql(6)
  end
end
