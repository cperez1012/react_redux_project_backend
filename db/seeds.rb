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

User.create(username: 'cperez', email: 'perezchristian@gmail.com', password: '1234', imageurl: 'https://media-exp1.licdn.com/dms/image/C4D03AQEJIcRn6nUGcQ/profile-displayphoto-shrink_400_400/0?e=1608768000&v=beta&t=j35SWj3PsRchnrU5jXCeYNcPvzmve9_pyS0yhnApnd8', bio: 'I enjoy watching the sport of boxing!')

christian = User.first

favorite = List.create(title: 'Favorite Fighters', user_id: christian.id)

lb = List.create(title: 'Pound for Pound', user_id: christian.id)

first_list = List.first

tyson_fury = Fighter.create(name: 'Tyson Fury', alias: 'The Gypsy King', nationality: 'The United Kingdom', division: 'Heavyweight', stance: 'orthodox', height: '6′ 9″', reach: '85″', status: 'active', champion: true, win: 30, loss: 0, draw: 1, ko: 21, list_id: favorite.id)

canelo = Fighter.create(name: 'Saul Alvarez', alias: 'Canelo', nationality: 'Mexico', division: 'Middleweight', stance: 'orthodox', height: '5′ 8″', reach: '70.5″', status: 'active', champion: true, win: 53, loss: 1, draw: 2, ko: 36, list_id: favorite.id)

bud = Fighter.create(name: 'Terence Crawford', alias: 'Bud', nationality: 'USA', division: 'Welterweight', stance: 'southpaw', height: '5′ 8″', reach: '74″', status: 'active', champion: true, win: 36, loss: 0, draw: 0, ko: 27, list_id: favorite.id)

deontay = Fighter.create(name: 'Deontay Wilder', alias: 'The Bronze Bomber', nationality: 'USA', division: 'Heavyweight', stance: 'orthodox', height: '6′ 7″', reach: '83″', status: 'active', champion: false, win: 42, loss: 1, draw: 1, ko: 41, list_id: favorite.id)

hi_tech = Fighter.create(name: 'Vasyl Lomachenko', alias: 'Hi-Tech', nationality: 'Ukraine', division: 'Lightweight', stance: 'southpaw', height: '5′ 7″', reach: '65.5″', status: 'active', champion: true, win: 14, loss: 1, draw: 0, ko: 10, list_id: favorite.id)

ggg = Fighter.create(name: 'Gennadiy Golovkin', alias: 'GGG', nationality: 'Kazakhstan', division: 'Middleweight', stance: 'orthodox', height: '5′ 10.5″', reach: '70″', status: 'active', champion: true, win: 14, loss: 1, draw: 0, ko: 10, list_id: favorite.id)

errol_spence = Fighter.create(name: 'Errol Spence Jr', alias: 'The Truth', nationality: 'USA', division: 'Welterweight', stance: 'southpaw', height: '5′ 9.5″', reach: '72″', status: 'active', champion: true, win: 26, loss: 0, draw: 0, ko: 21, list_id: favorite.id)

monster = Fighter.create(name: 'Naoya Inoue', alias: 'Monster', nationality: 'Japan', division: 'Bantamweight', stance: 'orthodox', height: '5′ 5″', reach: '67.5″', status: 'active', champion: true, win: 19, loss: 0, draw: 0, ko: 16, list_id: favorite.id)

sweet_pea = Fighter.create(name: 'Pernell Whitaker', alias: 'Sweet Pea', nationality: 'USA', division: 'Welterweight', stance: 'southpaw', height: '5′ 6″', reach: '69″ ', status: 'inactive', champion: true, win: 40, loss: 4, draw: 1, ko: 17, list_id: favorite.id)
 
