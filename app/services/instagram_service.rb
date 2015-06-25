class InstagramService
  attr_reader :user

  def initialize(user)
    @user = user
  end

  def get_user_instagrams
    client = Instagram.client(:access_token => user.token)
    image_data = []
    client.user_recent_media.each do |media|
      if media.tags == ["harrisburgmuralproject"]
        image_data << {
          'image'       => media.images.standard_resolution.url,
          'latitude'  => get_latitude(media),
          'longitude' => get_longitude(media)
        }
      end
    end
    image_data
  end

  def get_latitude(media)
    if media.location
      media.location.latitude
    else
      nil
    end
  end

  def get_longitude(media)
    if media.location
      media.location.longitude
    else
      nil
    end
  end

end
