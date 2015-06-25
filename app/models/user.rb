class User < ActiveRecord::Base
  has_many :murals

  def self.find_or_create_from_auth(data)
    user = User.find_or_create_by(provider: data.provider, uid: data.uid)
    user.user_name = data.info.nickname
    user.image_url = data.info.image
    user.website_url = data.info.website
    user.token = data.credentials.token
    user.save
    user
  end

  def unsaved_murals
    InstagramService.new(self).get_user_instagrams.map do |mural|
      Mural.find_by(image: mural['image']).nil? ? mural : nil
    end.compact
  end

  def saved_murals
    InstagramService.new(self).get_user_instagrams.map do |mural|
      mural = Mural.find_by(image: mural['image'])
      if mural
        mural
      end
    end.compact
  end

end
