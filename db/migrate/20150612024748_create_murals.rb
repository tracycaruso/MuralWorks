class CreateMurals < ActiveRecord::Migration
  def change
    create_table :murals do |t|
      t.string :name
      t.string :image
      t.string :latitude
      t.string :longitude
      t.string :artist_name
      t.string :artist_website
      t.string :date_created
      t.string :description
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
