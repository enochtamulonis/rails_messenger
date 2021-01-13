class RemoveDeviseUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :rooms, :user
    remove_column :messages, :user
    drop_table :friendships
    drop_table :users
  end
end
