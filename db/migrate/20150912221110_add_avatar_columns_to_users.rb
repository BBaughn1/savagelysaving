class AddAvatarColumnsToUsers < ActiveRecord::Migration
  def self.up
    # add_attachment :users, :avatar
    change_table :posts do |t|
    	t.attachment :image
    end
  end

  def self.down
    remove_attachment :posts, :image
  end
end
