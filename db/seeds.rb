# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Dog.destroy_all
Dogsitter.destroy_all
Stroll.destroy_all
City.destroy_all
JoinTalbeDogStroll.destroy_all

dogs_array = []
dogsitters_array = []
cities_array = []
strolls_array = []


# Création de 5 villes que l'on met dans le tableau cities_array
5.times do
	city = City.create(city_name: Faker::Address.city)
	cities_array << city
end
puts "5 cities ont été créées"

# Création de 5 dogs que l'on met dans le tableau dogs_array
# Idem avec les dogsitters que l'on met dans le tableau dogsitters_array
5.times do
	dog = Dog.create(name: Faker::Name.first_name, city: cities_array.sample)
	dogs_array << dog
	dogsitter = Dogsitter.create(name: Faker::Name.first_name, city: cities_array.sample)
  dogsitters_array << dogsitter
end
puts "5 dogs et 5 dogsitters ont été créés"

# Création de 5 strolls à partir des instances précédentes
5.times do
	strolls_array << Stroll.create(dogsitter: dogsitters_array.sample)
end
puts "5 strolls ont été créés"

5.times do
	JoinTalbeDogStroll.create(dog: dogs_array.sample, stroll: strolls_array.sample)
end



