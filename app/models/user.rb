class User < ActiveRecord::Base
  has_many :murals

  has_secure_password

  # validates :full_name, presence: true
  # validates :email, presence: true,
  #                   uniqueness: true
  # validates :user_name, presence: true

  def self.find_or_create_from_auth(data)
    user = User.find_or_create_by(provider: data.provider, uid: data.uid)
    user.user_name = data.info.nickname
    user.image_url = data.info.image
    user.website_url = data.info.website
    user.token = data.credentials.token
    user.password = 'fake'
    user.password_digest = 'fake'
    user.save
    user
  end

  def user_unsaved_images
    murals = []
    InstagramService.get_user_instagrams(self).each do |img|
      if Mural.find_by(image: img['url']) == nil
        murals << img
      end
    end
    murals
  end


  def user_saved_images

    InstagramService.get_user_instagrams(self).map do |img|
      mural = Mural.find_by(image: img['url'])
      if mural
        mural
      end
    end.compact
  end

end
