# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do
	House.create name: Faker::GameOfThrones.house,
				 address: Faker::Address.street_address,
				 stratum: rand(1..6)
end

SensorCategory.create name: "Energia",
						description: "Categoria encargada de discriminar los sensores que son de corriente"

SensorCategory.create name: "Agua",
						description: "Categoria encargada de discriminar los sensores que son de agua"

SensorCategory.create name: "Luminosidad",
						description: "Categoria encargada de discriminar los sensores que son de luminosidad"



5.times do |house|
	5.times do |room| 
		r = Room.create name: Faker::GameOfThrones.character,
					house_id: house+1

		2.times do
			Sensor.create name: Faker::Commerce.product_name,
						  room_id: r.id,
						  comment: Faker::VForVendetta.quote,
						  sensor_category_id: rand(1..3)
		end
	end
end