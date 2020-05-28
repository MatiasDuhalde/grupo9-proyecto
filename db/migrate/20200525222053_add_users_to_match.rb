class AddUsersToMatch < ActiveRecord::Migration[5.2]
  def change
    add_column :matches, :liker_id, :integer
    add_column :matches, :liked_id, :integer
  end
end
