# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'

CSV.foreach ('seed_csvs/products.csv') do |csv_obj|
  Product.create(name: csv_obj[1], description: csv_obj[2], price: csv_obj[3], photo_url: csv_obj[4], inventory: csv_obj[5], category: csv_obj[6])
end

require 'faker'

24.times do
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    street_address: Faker::Address.street_address,
    city: Faker::Address.city,
    state: Faker::Address.state,
    zip: Faker::Address.zip,
    phone: Faker::PhoneNumber.phone_number,
    provider: 'github'
  )
end
