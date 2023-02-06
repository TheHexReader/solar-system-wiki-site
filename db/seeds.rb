# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

AstronomicalObjectDesignation.create!(
  designation: 'star',
  description: 'shiny dot in the sky, or a glowing ball, depending on distance)))'
)

AstronomicalObjectCharacteristic.create!(
  diameter: 1392000,
  volume: 1412000000000000000,
  mass: 1989100000000000000000000000000,
  density: 1.409,
  gravity: 274,
  has_rings: false,
  status: AstronomicalObjectDesignation.find_by(
    designation: 'star',
    description: 'shiny dot in the sky, or a glowing ball, depending on distance)))'
  ).id
)

AstronomicalObject.create!(
  slug: 'sun',
  name: 'sun',
  characteristic: AstronomicalObjectCharacteristic.find_by(
    diameter: 1392000,
    volume: 1412000000000000000,
    mass: 1989100000000000000000000000000,
    density: 1.409,
    gravity: 274,
    has_rings: false,
    status: AstronomicalObjectDesignation.find_by(designation: 'star')
  )
)
