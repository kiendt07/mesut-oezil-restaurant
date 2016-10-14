# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

%w(Breakfast Lunch Dinner Drinks).each do |section|
  Section.create({name: section})
end

Section.all.each do |section|
  5.times{section.food_items.create({name: Faker::Food.ingredient, description: Faker::Hipster.sentence, price: Faker::Number.decimal(2, 2), img_url: Faker::Avatar.image})}
end
