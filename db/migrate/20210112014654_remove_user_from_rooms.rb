class RemoveUserFromRooms < ActiveRecord::Migration[6.0]
  def change
    remove_column :rooms, :user_idrai
  end
end
