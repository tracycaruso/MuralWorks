require 'ostruct'

class InstagramService
  attr_reader :user

  def self.get_tagged_instagram(tag)
    Instagram.media_search(tag, options={count: 100})
  end

  def self.get_user_instagrams(user)
    client = Instagram.client(:access_token => user.token)

    image_data = []
    client.user_recent_media.each do |media|
      if media.tags == ["harrisburgmuralproject"]
        image_data << {
          'url'       => media.images.standard_resolution.url,
          'latitude'  => get_latitude(media),
          'longitude' => get_longitude(media)
        }
      end
    end
    image_data
  end

  def self.get_latitude(media)
    if media.location
      media.location.latitude
    else
      nil
    end
  end

  def self.get_longitude(media)
    if media.location
      media.location.longitude
    else
      nil
    end
  end

end
