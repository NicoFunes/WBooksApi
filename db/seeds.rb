# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: 'test@widergy.com', password: '123123123', password_confirmation: '123123123', first_name: 'Test', last_name: 'TestLastName') 
User.create(email: 'test2@widergy.com', password: '123123123', password_confirmation: '123123123', first_name: 'Test2', last_name: 'Test2LastName') 
Book.create(title: 'libro1', author: 'capote1', image: 'una copa', genre: 'humo', publisher: 'capoteman', year: '2018') 
Book.create(title: 'libro2', author: 'capote1', image: 'una copa', genre: 'humo', publisher: 'capoteman2', year: '2018')
50.times do
  Book.create(genre: Faker::Book.genre, author: Faker::Book.author,image:'alta imagen', title: Faker::Book.author, publisher: Faker::Book.genre, year: Faker::Date.birthday(min_age: 1, max_age: 95).year )
end

