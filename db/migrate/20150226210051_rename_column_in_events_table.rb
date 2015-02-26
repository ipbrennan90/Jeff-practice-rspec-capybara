class RenameColumnInEventsTable < ActiveRecord::Migration
  def change
    rename_column :events, :name, :event_name
  end
end
