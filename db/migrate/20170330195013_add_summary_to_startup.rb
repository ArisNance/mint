class AddSummaryToStartup < ActiveRecord::Migration
  def change
    add_column :startups, :summary, :string
  end
end
