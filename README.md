# Test Lecollectionist

## Stack
* Ruby 3.1.0
* Rails 7.0.1

## Usage
Display shops' schedules

## Installation
* Download from source
```sh
git clone git@github.com:TPozzobon/test-lecollectionist.git
cd test-lecollectionist
```
* Install gems
```sh
bundle install
```

* Create DB and Seeds
```sh
rails db:create && rails db:migrate && rails db:seed
```

## Rspec
* Launch tests
```sh
bundle exec rspec
```
