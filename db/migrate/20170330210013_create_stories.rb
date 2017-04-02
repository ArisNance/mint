class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :title
      t.string :content
      t.string :header_image
      t.string :facebook_url
      t.string :twitter_url
      t.string :description

      t.timestamps null: false
    end
  end
end
