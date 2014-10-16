class AddContainerIdAndUserIdToItems < ActiveRecord::Migration
  def change
    add_column :items, :container_id, :integer
    add_column :items, :user_id, :integer
  end
end
