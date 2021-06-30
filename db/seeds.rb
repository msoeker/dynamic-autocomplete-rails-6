# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"

Person.create(first_name: 'Immanuel', last_name: 'Kant')
Person.create(first_name: 'Marie', last_name: 'Dorian')
Person.create(first_name: 'William', last_name: 'Kunstler')
Person.create(first_name: 'J.C.R.', last_name: 'Licklider')

100.times do
  person = Person.new(
    first_name: Faker::Name.unique.first_name ,
    last_name: Faker::Name.unique.last_name 
  )
  person.save
end