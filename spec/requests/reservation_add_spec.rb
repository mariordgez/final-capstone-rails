require 'rails_helper'

describe 'Cars API', type: :request do
  it 'has 0 elements since reservation list is empty' do
    get '/api/v1/reservations/'
    json = JSON.parse(response.body)
    expect((json['data']).size).to eql(0)
  end

  it 'adds a new car and the data array increases by one' do
    post '/api/v1/reservations/add', params: { date: '2021/11/11', city: 'Japan', user_id: 1, car_id: 1 }
    json = JSON.parse(response.body)
    expect((json['data']).size).to eql(1)
  end

  it 'fails post request due to max number of char validation' do
    post '/api/v1/reservations/add',
         params: { date: '2021/11/11', city: 'Japaneefefeeewfewefwewfewfewfewfewfewffewewfewffewfewfewwef', user_id: 1,
                   car_id: 1 }
    json = JSON.parse(response.body)
    expect((json['data']).size).to eql(0)
  end
end
