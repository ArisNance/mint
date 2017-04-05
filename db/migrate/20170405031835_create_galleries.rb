class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.string :image_url, :string
      t.string :image_src, :string

      t.timestamps null: false
    end
  end
end
