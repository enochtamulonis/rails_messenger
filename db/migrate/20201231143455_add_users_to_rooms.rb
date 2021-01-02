class AddUsersToRooms < ActiveRecord::Migration[6.0]
  def change
    add_column :rooms, :users, :text
  end
end
