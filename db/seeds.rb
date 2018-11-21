# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all
Review.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:             'Dishoom',
    address:          'paris',
    phone_number:     '00 00 00 00 00',
    category:         'belgian'
  },
  {
    name:             'Pizza East',
    address:          'new york',
    phone_number:     '00 00 00 00 00',
    category:         'italian'
  },
  {
    name:             'Esprit Chai',
    address:          'londres',
    phone_number:     '00 00 00 00 00',
    category:         'french'
  },
  {
    name:             'ABCDE',
    address:          'milan',
    phone_number:     '00 00 00 00 00',
    category:         'japanese'
  },
  {
    name:             'POULET',
    address:          'berlin',
    phone_number:     '00 00 00 00 00',
    category:         'chinese'
  }
]

Restaurant.create!(restaurants_attributes)
# Restaurant.save

puts 'Creating reviews'
reviews_attributes = [

  {
    content:        'Buzzy destination for Indian street food in Bombay-style vintage decor.',
    rating:          5,
    restaurant:     Restaurant.first
  },
  {
    content:        'hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh.',
    rating:          1,
    restaurant:     Restaurant.second
  },
  {
    content:        'lorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsum',
    rating:          3,
    restaurant:     Restaurant.third
  },
  {
    content:        "because i'm happy.",
    rating:          0,
    restaurant:     Restaurant.fourth
  },
  {
    content:        'WTF i am looooooooooooooooooooooooooooooooooooooooooooooooo.',
    rating:          1,
    restaurant:     Restaurant.fifth
  }
]

Review.create!(reviews_attributes)
# Review.save

puts 'Finished!'
