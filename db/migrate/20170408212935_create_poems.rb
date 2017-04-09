class CreatePoems < ActiveRecord::Migration
  def change
    create_table :poems do |t|
      t.string :name
      t.string :title
      t.string :content
      t.string :header_image
      t.string :facebook_url
      t.string :twitter_url
      t.string :source

      t.timestamps null: false
    end
  end
end
