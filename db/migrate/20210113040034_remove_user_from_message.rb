class RemoveUserFromMessage < ActiveRecord::Migration[6.0]
  def change
    remove_column :messages, :user
  end
end
