class Mural < ActiveRecord::Base
  belongs_to :user

  def self.most_recent
    all.last(6).reverse
  end

end
