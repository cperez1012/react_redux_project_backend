# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.new(username: 'cperez', email: 'perezchristian@gmail.com', password_digest: '1234', image_url: 'https://scontent-lga3-1.cdninstagram.com/v/t51.2885-19/s320x320/12142387_725025870974201_1307390926_a.jpg?_nc_ht=scontent-lga3-1.cdninstagram.com&_nc_ohc=VJriPRRgHPIAX-J53M-&oh=d735ff3aea02f42a36a79f4166be193d&oe=5F7215EC')

favorite_fighter = List.create(title: 'Favorite Fighters')

Fighter.create(name: 'Tyson Fury', alias: 'The Gypsy King', nationality: 'The United Kingdom', division: 'Heavyweight', stance: 'orthodox', height: '6′ 9″', reach: '85″', status: 'active', champion: true, win: 30, loss: 0, draw: 1, ko: 21, list_id: favorite_fighter.id)

Fighter.destroy_all
List.destroy_all
