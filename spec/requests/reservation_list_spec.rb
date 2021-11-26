require 'rails_helper'

describe 'Cars API', type: :request do
  let!(:reservation_test) do
    FactoryBot.create(:reservation, date: '2021/11/11', city: 'Japan', user_id: 1, car_id: 1)
    FactoryBot.create(:reservation, date: '2021/12/11', city: 'Mexico', user_id: 2, car_id: 1)
    FactoryBot.create(:reservation, date: '2021/10/11', city: 'Dallas', user_id: 3, car_id: 1)
    FactoryBot.create(:reservation, date: '2021/9/11', city: 'Roaas', user_id: 4, car_id: 1)
  end

  it 'has element data in the message' do
    get '/api/v1/reservations/'
    expect(JSON.parse(response.body).size).to eq(1)
  end

  it 'has four reservations in the list' do
    get '/api/v1/reservations/'
    json = JSON.parse(response.body)
    expect((json['data']).size).to eql(4)
  end
end
