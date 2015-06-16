require 'ostruct'

class InstagramService
  attr_reader :user

  def self.get_tagged_instagram(tag)
    Instagram.media_search(tag, options={count: 100})
  end

  def self.get_user_instagrams(user)
    client = Instagram.client(:access_token => user.token)
    client.user_recent_media.map do |media|
      if media.tags == ["harrisburgmuralproject"]
        media.images.standard_resolution.url
      end
    end
  end

end
