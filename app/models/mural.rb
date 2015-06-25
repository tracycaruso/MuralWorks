class Mural < ActiveRecord::Base
  belongs_to :user
  validates :image, uniqueness: true
  validates :name, presence: true
  validates :latitude, presence: true
  validates :longitude, presence: true

  def self.most_recent
    all.last(6).reverse
  end

end
