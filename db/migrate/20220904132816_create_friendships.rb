class CreateFriendships < ActiveRecord::Migration[7.0]
  def change
    create_table :friendships do |t|

      t.integer :user1_id
      t.integer :user2_id

      t.timestamps
    end
  end
end
