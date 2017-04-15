class AddCityToEvents < ActiveRecord::Migration
  def change
    add_column :events, :description, :string
    add_column :events, :location, :string
    add_column :events, :city, :string
    add_column :events, :organizer, :string
    add_column :events, :free, :boolean
  end
end
