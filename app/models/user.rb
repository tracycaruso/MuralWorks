class User < ActiveRecord::Base
  has_many :murals
  has_secure_password

  validates :full_name, presence: true
  validates :email, presence: true,
                    uniqueness: true
  validates :user_name, presence: true


end
