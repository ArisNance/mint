class AddEndTimeToStories < ActiveRecord::Migration
  def change
    add_column :stories, :end_time, :datetime
  end
end
