class CreateStartups < ActiveRecord::Migration
  def change
    create_table :startups do |t|
      t.string :company_name
      t.string :location
      t.string :founder
      t.string :team_two
      t.string :team_three
      t.string :web_url
      t.string :twitter_url
      t.string :facebook_url
      t.string :option_url

      t.timestamps null: false
    end
  end
end
