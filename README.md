# Exchange Coin

ExchangeCoin is a Rails Application that uses currencydatafeed.com API to convert currencies to different ones.

## Getting Started

To get started you can copy or fork this repository to your machine/github account and build it by yourself. There's a version online on: [ExchangeCoin](http://exchange-coin.herokuapp.com/)

### Prerequisites

You need install docker/docker-compose to build this project. To get more information about it check: [Docker Installation](https://docs.docker.com/engine/installation/)

### Installing

After installed docker/docker-compose, go to project folder on terminal and run the following command to build the rails environment (Depending on your docker installation, you'll need to run with root permissions)

```
docker-compose build
```

Then, you'll run the db:create

```
docker-compose run app rails db:create
```

To use a local version, just up the docker container with

```
docker-compose up
```

and you can access on localhost:3000

## Running the tests

There are some tests with Rspec and Capybara. You can run all of them typing the command below

```
docker-compose run --rm app bundle exec rspec
```

## Built With

* [Ruby on Rails](http://rubyonrails.org/)
* [Docker](https://www.docker.com/)
* [PostgreSQL](https://www.postgresql.org/)
* [Codeship](https://codeship.com/)
* [Bootstrap](http://getbootstrap.com/)
* [CoffeeScript](http://coffeescript.org/)

## Powered Up By
* [Currency Data Feed](https://currencydatafeed.com/)

## Authors

* **Maicon Vinicios** - [maiconvos](https://github.com/maiconvos)

## License

This project is free to copy, edit and whatever. Powered with &#10084;