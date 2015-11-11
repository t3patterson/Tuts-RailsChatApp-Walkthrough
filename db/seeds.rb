# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


seedArray = [
  {name: "Jason", message: "I love chatting w peeople"},
  {name: "Zend", message: "Why does my name start with a z"},
  {name: "Ed", message: "this place is terrriffic"},
  {name: "AK", message: "Will u be my frind somebody?"},
  {name: "Ed", message: "be quiet AK"},
  {name: "Zend", message: "why cant we all just get along?"}
]

seedArray.each do |msg|
  puts msg
  Chirpbox.create!(msg)
end 
