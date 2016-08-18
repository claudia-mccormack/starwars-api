50.times do
  StarWar.create(
  character: Faker::StarWars.character,
  droid: Faker::StarWars.droid,
  planet: Faker::StarWars.planet,
  quote: Faker::StarWars.quote,
  vehicle: Faker::StarWars.vehicle
  )
end
