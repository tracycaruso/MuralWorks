class Seed

  attr_reader :rachel, :jeff, :jorge, :josh, :ordered, :paid, :cancelled, :completed

  def self.start
    new.generate
  end

  def generate
    create_murals
    user_create
  end

  def user_create
    User.create(full_name: "Tracy Caruso", user_name: "tracymcaruso", email: "tracy@gmail.com", provider: "instagram", token: "1917762378.26cf8f3.d00d12f4337f447cb2d1edda88df192d", uid: "1917762378", image_url: "https://igcdn-photos-a-a.akamaihd.net/hphotos-ak-xaf1/t51.2885-19/11376439_1629117797306440_1800201839_a.jpg", occupation: "Developer", description: "I love street art", twitter_link: "http://twitter.com", instagram_link: "http://instagram.com", linkedin_link: "http://linkedin.com", ello_link: "http://ello.com", facebook_link: "http://facebook.com", dribbble_link: "http://dridbble.com", website_url: "http://www.tracymcaruso.com", admin: true)
  end

  def create_murals
    Mural.create(name: "Mural Name", image:'https://scontent.cdninstagram.com/hphotos-xfa1/t51.2885-15/e15/11378549_1440876629552491_805058315_n.jpg', description: 'pretty mural', artist_name: 'megan davis', latitude: 'here', longitude: 'there')
    Mural.create(name: "Mural Name", image:'https://scontent.cdninstagram.com/hphotos-xfa1/t51.2885-15/e15/11326820_801827753264739_1573523043_n.jpg', description: 'pretty mural', artist_name: 'megan davis', latitude: 'here', longitude: 'there')
    Mural.create(name: "Mural Name", image:'https://scontent.cdninstagram.com/hphotos-xaf1/t51.2885-15/e15/11325846_1590099431258235_1207548463_n.jpg', description: 'pretty mural', artist_name: 'megan davis', latitude: 'here', longitude: 'there')
    Mural.create(name: "Mural Name", image:'https://scontent.cdninstagram.com/hphotos-xfa1/t51.2885-15/e15/11376305_1867935616765144_1339419725_n.jpg', description: 'pretty mural', artist_name: 'megan davis', latitude: 'here', longitude: 'there')
    Mural.create(name: "Mural Name", image:'https://scontent.cdninstagram.com/hphotos-xaf1/t51.2885-15/e15/11377465_853812994687214_1498235843_n.jpg', description: 'pretty mural', artist_name: 'megan davis', latitude: 'here', longitude: 'there')
    Mural.create(name: "Mural Name", image:'https://scontent.cdninstagram.com/hphotos-xfa1/t51.2885-15/e15/11378549_1440876629552491_805058315_n.jpg', description: 'pretty mural', artist_name: 'megan davis', latitude: 'here', longitude: 'there')
  end


end

Seed.start
