class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :full_name
      t.string :user_name
      t.string :email
      t.string :password_digest
      t.string :provider
      t.string :token
      t.string :uid
      t.string :image_url
      t.string :occupation
      t.string :description
      t.string :twitter_link
      t.string :instagram_link
      t.string :linkedin_link
      t.string :ello_link
      t.string :facebook_link
      t.string :dribbble_link
      t.string :website_url
      t.boolean :admin

      t.timestamps null: false
    end
  end
end
