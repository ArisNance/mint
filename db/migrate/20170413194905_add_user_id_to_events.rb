class AddUserIdToEvents < ActiveRecord::Migration
  def change
    add_column :events, :web_url, :string
    add_column :events, :event_image, :string
    add_column :events, :summary, :string
    add_column :events, :user_id, :integer
    add_index :events, :user_id
  end
end
