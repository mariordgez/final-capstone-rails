# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
cars = [
  {
    name: 'Sentra',
    model: 'SV 2020',
    brand: 'Nissan',
    price: '20270.0',
    image_url: 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/2020-nissan-sentra-120-1574102513.jpg',
    removed: false
  },

  {
    name: 'Civic',
    model: 'RS 2022',
    brand: 'Honda',
    price: '21900.0',
    image_url: 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/2022-honda-civic-sedan-110-1623810388.jpg',
    removed: false
  },

  {
    name: '4matic',
    model: 'e460 2021',
    brand: 'Mercedes Benz',
    price: '62750.0',
    image_url: 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/2021-mercedes-benz-e450-4matic-sedan-107-1604280340.jpg',
    removed: false
  },

  {
    name: 'Polestar',
    model: 'v60 t8 2020',
    brand: 'Volvo',
    price: '68940.0',
    image_url: 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/2020-volvo-v60-t8-polestar-205-hdr-1579105927-mmp-1-1636042387.jpg',
    removed: false
  }
]

cars.each{ |car| Car.create! car }

users = [
  {
    name: 'John Doe',
    user_name: 'john123'
  },

  {
    name: 'Peter Parker',
    user_name: 'peter456'
  },

  {
    name: 'Alex Mason',
    user_name: 'alex789'
  }
]

users.each{ |user| User.create! user }

reservations = [
  { 
    date: '01/03/2021',
    city: 'new york',
    user_id: 1,
    car_id: 1,
  },
  { 
    date: '02/03/2021',
    city: 'new yorkee',
    user_id: 2,
    car_id: 1,
  }

]

reservations.each{ |reservation| Reservation.create! reservation }