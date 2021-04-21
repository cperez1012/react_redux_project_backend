# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
List.destroy_all
Fighter.destroy_all

User.create(username: 'cperez', email: 'perezchristian@gmail.com', password: '1234', imageurl: 'https://scontent-lga3-1.cdninstagram.com/v/t51.2885-19/s320x320/12142387_725025870974201_1307390926_a.jpg?tp=1&_nc_ht=scontent-lga3-1.cdninstagram.com&_nc_ohc=csKVAVeoK3gAX8ZDRn8&edm=ABfd0MgAAAAA&ccb=7-4&oh=9dde7deee22cb16b9ce8597d4d6eac12&oe=6095932C&_nc_sid=7bff83', bio: 'I enjoy watching the sport of boxing!')

christian = User.first

favorite = List.create(title: 'Favorite Fighters', user_id: christian.id)

lb = List.create(title: 'Pound for Pound', user_id: christian.id)

first_list = List.first

tyson_fury = Fighter.create(name: 'Tyson Fury', imageurl: 'https://mancunion.com/wp-content/uploads/sites/6/Tyson_fury12.jpg', alias: 'The Gypsy King', nationality: 'The United Kingdom', division: 'Heavyweight', stance: 'orthodox', height: '6′ 9″', reach: '85″', status: 'active', champion: true, win: 30, loss: 0, draw: 1, ko: 21, list_id: favorite.id, ranking: 1)

canelo = Fighter.create(name: 'Saul Alvarez', imageurl: 'https://thumbor.forbes.com/thumbor/fit-in/416x416/filters%3Aformat%28jpg%29/https%3A%2F%2Fspecials-images.forbesimg.com%2Fimageserve%2F5ece91d089ee2f0006814e6b%2F0x0.jpg%3Fbackground%3D000000%26cropX1%3D867%26cropX2%3D2726%26cropY1%3D727%26cropY2%3D2587', alias: 'Canelo', nationality: 'Mexico', division: 'Middleweight', stance: 'orthodox', height: '5′ 8″', reach: '70.5″', status: 'active', champion: true, win: 53, loss: 1, draw: 2, ko: 36, list_id: favorite.id, ranking: 2)

bud = Fighter.create(name: 'Terence Crawford', imageurl: 'https://photo.boxingscene.com/uploads/terence-crawford%20(2)_6.jpg', alias: 'Bud', nationality: 'USA', division: 'Welterweight', stance: 'southpaw', height: '5′ 8″', reach: '74″', status: 'active', champion: true, win: 36, loss: 0, draw: 0, ko: 27, list_id: favorite.id, ranking: 3)
