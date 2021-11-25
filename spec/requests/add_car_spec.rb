require 'rails_helper'

describe 'Cars API', type: :request do
  let!(:car_test) do
    FactoryBot.create(:car, name: 'BWM X2', model: '2019', brand: 'BMW', price: 1_000_000.00,
                            image_url: 'http://fakeurl.com/bmw', removed: false)
    FactoryBot.create(:car, name: 'Audi X2', model: '2021', brand: 'Audi', price: 1_000_000.00,
                            image_url: 'http://fakeurl.com/audi', removed: false)
  end

  it 'adds a new car successfully' do
    post '/api/v1/cars/add', params: { name: 'Chevy', model: 'Max', brand: 'Chevrolet',
                                       image_url: 'http://img.jpg', price: 10_000, removed: false }
    json = JSON.parse(response.body)
    expect(json['message']).to eql('Car succesfully added.')
  end

  it 'tries to add a new car with an already taken image_url' do
    post '/api/v1/cars/add', params: { name: 'Chevy', model: 'Max', brand: 'Chevrolet',
                                       image_url: 'http://fakeurl.com/audi', price: 10_000, removed: false }
    json = JSON.parse(response.body)
    expect(json['message'][0]['message']).to eql('Image url has already been taken')
  end
end
