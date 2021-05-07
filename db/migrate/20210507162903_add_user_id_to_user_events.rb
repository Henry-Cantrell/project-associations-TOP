class AddUserIdToUserEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :user_events, :user_id, :integer
  end
end
