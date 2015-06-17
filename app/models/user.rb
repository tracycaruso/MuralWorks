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

  def user_images
    InstagramService.get_user_instagrams(self)
  end

end
