# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

murals = Mural.create(
  [{name: "Mural Name", image:'https://scontent.cdninstagram.com/hphotos-xfa1/t51.2885-15/e15/11378549_1440876629552491_805058315_n.jpg', description: 'pretty mural', artist_name: 'megan davis', latitude: 'here', longitude: 'there'}],
  [{name: "Mural Name", image:'https://scontent.cdninstagram.com/hphotos-xfa1/t51.2885-15/e15/11326820_801827753264739_1573523043_n.jpg', description: 'pretty mural', artist_name: 'megan davis', latitude: 'here', longitude: 'there'}],
  [{name: "Mural Name", image:'https://scontent.cdninstagram.com/hphotos-xaf1/t51.2885-15/e15/11325846_1590099431258235_1207548463_n.jpg', description: 'pretty mural', artist_name: 'megan davis', latitude: 'here', longitude: 'there'}],
  [{name: "Mural Name", image:'https://scontent.cdninstagram.com/hphotos-xfa1/t51.2885-15/e15/11376305_1867935616765144_1339419725_n.jpg', description: 'pretty mural', artist_name: 'megan davis', latitude: 'here', longitude: 'there'}],
  [{name: "Mural Name", image:'https://scontent.cdninstagram.com/hphotos-xaf1/t51.2885-15/e15/11377465_853812994687214_1498235843_n.jpg', description: 'pretty mural', artist_name: 'megan davis', latitude: 'here', longitude: 'there'}],
  [{name: "Mural Name", image:'https://scontent.cdninstagram.com/hphotos-xfa1/t51.2885-15/e15/11378549_1440876629552491_805058315_n.jpg', description: 'pretty mural', artist_name: 'megan davis', latitude: 'here', longitude: 'there'}]
)
