class AddInfoToPins < ActiveRecord::Migration
  def change
   add_column :pins, :wiki_url, :string
   add_column :pins, :image_url, :string
   add_column :pins, :title, :string
  end
end
