class RemoveUserFromMessage < ActiveRecord::Migration[6.0]
  def change
    if column_exists? :messages, :user
      remove_column :messages, :user
    end
  end
end
