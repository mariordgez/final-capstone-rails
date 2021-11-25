# API RoR Cars reservation

Back-end server, providing it with some API endpoints to a to allow it to be used in different ways, rather than just through the site - for example, a mobile app or a CLI application.

## Built With

- Ruby v2.7.2
- Ruby on Rails v6.1.4

## Front End

[React Front](https://github.com/mariordgez/final-capstone-react/)

## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

- Ruby: 2.7.2
- Rails: 6.1.4
- Postgres: >=9.5

### Setup

To run this project, you only need a computer with internet connection and a browser installed, and follow these steps:

In your terminal, in the folder of your preference, type the following bash command to clone this repository:

```sh
git clone https://github.com/mariordgez/final-capstone-rails.git
```

then

```sh
cd rails-back
```

Install gems with:

```
bundle install
```

Setup database with:

```
   rails db:create
   rails db:migrate
```

Install figaro to set Env variables
Figaro installation is easy:

```
$ bundle exec figaro install
```

This creates a commented config/application.yml file and adds it to your .gitignore. Add your own configuration to this file and you're done!

Given the following configuration file you'll have to add this variables and write your own password and user to connect to DB:

# config/application.yml

> #Dev <br>
> psql_uid: postgres_user <br>
> psql_pwd: Mypsqlpassword <br>
> #prod <br>
>
> prod_psql_uid: postgres_user<br>
> prod_psql_pwd: Mypsqlpassword<br>

Optionally, you can add the provided seeds for the database tables with:

```
    rails db:seed
```

### Usage

Start server with:

```
    rails server
```

API
Open the rest API client of your choice (we recommend using Thunder client VScode extension)

### API endpoints

| Name            | Endpoint                   | Method | Header | Body                                                                                                                                     | description                 |
| --------------- | -------------------------- | ------ | ------ | ---------------------------------------------------------------------------------------------------------------------------------------- | --------------------------- |
| Users           | `/api/v1/users`            | GET    |        |                                                                                                                                          | return list of users        |
| Cars            | `/api/v1/cars`             | GET    |        |                                                                                                                                          | return all the cars         |
| New car         | `/api/v1/cars/add`         | POST   |        | {"car": {"name": "test", "model": "car model", "brand": "car brand", "price": "1000", image_url: "http://url-img.com, "removed": false}} | Create a new car            |
| Delete car      | `/api/v1/cars/:ids`        | PATCH  |        |                                                                                                                                          | Delete a car                |
| Detail car      | `/api/v1/cars/:id`         | GET    |        |                                                                                                                                          | Return a single car by id   |
| Reservations    | `/api/v1/reservations`     | GET    |        |                                                                                                                                          | return all the reservations |
| Add reservation | `/api/v1/reservations/add` | POST   |        | {"reservation": {"date": "10/10/2021", "city": "city", "car_id": "1", "user_id": "2"}}                                                   | Create a new reservation    |

## Authors

👨‍💻 **Eduardo Rodriguez**

- GitHub: [@EroAuditore](https://github.com/EroAuditore)
- Twitter: [@EroAuditore](https://twitter.com/EroAuditore)
- LinkedIn: [EroAuditore](https://www.linkedin.com/in/EroAuditore/)

👨‍💻 **Mario Rodriguez**

- GitHub: [@mariordgez](https://github.com/mariordgez)
- Twitter: [@MarioRo75396624](https://twitter.com/MarioRo75396624)
- LinkedIn: [LinkedIn](https://linkedin.com/in/mario-alberto-rodriguez-cota-a2860a205)

👨‍💻 **Angel Diaz**

- GitHub: [@ad9311](https://github.com/ad9311)
- Twitter: [@adiaz9311](https://twitter.com/adiaz9311)
- LinkedIn: [Ángel Díaz](https://www.linkedin.com/in/ad9311/)

👨‍💻 **Yuvraj Manoo**

- GitHub: [@YuvrajjM108](https://github.com/YuvrajM108)
- Twitter: [@YuvrajM108](https://twitter.com/YuvrajM108)
- LinkedIn: [Yuvraj-Manoo](https://linkedin.com/in/yuvraj-manoo)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to comments and raise any [issue](https://github.com/mariordgez/final-capstone-rails/issues) for this milestone.

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- [Microverse](https://www.microverse.org/)
- [The Odin Project](https://www.theodinproject.com/)
- [Rails Guides](https://guides.rubyonrails.org/index.html)

## 📝 License

This project is [MIT](./LICENSE) licensed.
