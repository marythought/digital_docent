# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

first_floor = Floor.create(name: 1)
basement = Floor.create(name: -1)

rooms = Room.create([{name: 'Living Room', floor: first_floor}, {name: 'Office', floor: first_floor}, {name: 'Bedroom', floor: first_floor}, {name: 'Kitchen', floor: first_floor}, {name: 'Basement', floor: first_floor}])

deb = Artist.create(name: "Deborah Yoon", country_city: "San Francisco", biography: "Josh met Deb living in Boston")
jason = Artist.create(name: "Jason Dibley", country_city: "Houston, TX", biography: "Photographer working at MFAH")
yar = Artist.create(name: "Yar!", country_city: "Houston, TX", biography: "Graffeti artist turned respectable watercolorist")
unknown = Artist.create(name: "Unknown", country_city: "Unknown", biography: "Artist unknown")
rachelle = Artist.create(name: "Rachelle Vasquez", country_city: "Houston, TX", biography: "Multi-media artist with a focus on animal rights.")

Item.create(work_title: "Koi Fish", page_title: "Koi Fish", artist: deb, room: rooms[0])
Item.create(work_title: "Fences", page_title: "Fences", artist: jason, room: rooms[0])
Item.create(work_title: "A Few of My Favorite Philosophers", page_title: "A Few of My Favorite Philosophers", artist: yar, room: rooms[0])
Item.create(work_title: "Hot Air Balloons", page_title: "Hot Air Balloons", artist: unknown, room: rooms[0])
Item.create(work_title: "Mary the Pigeon", page_title: "Mary the Pigeon", artist: rachelle, room: rooms[0])
Item.create(work_title: "Fox Stole", page_title: "Fox Stole", artist: rachelle, room: rooms[-1])

Image.create(file_link: "http://static1.squarespace.com/static/55ea3761e4b0cee522ffd1db/t/567f8295bfe873f15c0d3fa6/1451197083477/?format=2500w", imageable_id: 1, imageable_type: "Item")
Image.create(file_link: "http://static1.squarespace.com/static/5410a9dee4b06b163549c603/t/5472759be4b08d2565e10c43/1416787355585/fox+scarf+small.jpg?format=500w", imageable_id: 6, imageable_type: "Item")
Image.create(file_link: "http://www.ekosystem.org/0_Images_v2/9/l/914829.jpg", imageable_id: 3, imageable_type: "Item")
Image.create(file_link: "https://pbs.twimg.com/profile_images/649343937384071168/bPlHgJyh.jpg", imageable_id: 1, imageable_type: "Artist")
Image.create(file_link: "https://pbs.twimg.com/profile_images/649343937384071168/bPlHgJyh.jpg", imageable_id: 1, imageable_type: "Artist")
