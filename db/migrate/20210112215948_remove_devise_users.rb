class RemoveDeviseUsers < ActiveRecord::Migration[6.0]
  def change
    drop_table :friendships
    drop_table :users
  end
end
