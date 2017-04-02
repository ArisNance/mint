class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :bio
      t.string :linkedin_url
      t.string :twitter_url
      t.string :facebook_url
      t.string :person_image
      t.string :trait_one
      t.string :trait_two
      t.string :trait_three
      
      t.timestamps null: false
    end
  end
end
