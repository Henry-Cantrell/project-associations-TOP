class AddEventIdToUserEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :user_events, :event_id, :integer
  end
end
